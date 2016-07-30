class BankAccount
  attr_reader :balance

  def initialize(starting_balance=0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

require 'etc'

class BankAccountProxy
  def initialize(real_object, owner_name)
    @real_object = real_object
    @owner_name = owner_name
  end

  def balance
    check_access
    @real_object.balance
  end

  def deposit
    check_access
    @real_object.deposit(amount)
  end

  def withdraw(amount)
    check_access
    @real_object.withdraw(amount)
  end

  def check_access
    if Etc.getlogin != @owner_name
      fail "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end


class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def deposit(amoun)
    s = subject
    return s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    return s.withdraw(amount)
  end

  def balance
    s = subject
    return s.balance
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end

class AccountProxy
  def initialize(real_account)
    @subject = real_account
  end

  def method_missing(name, *args)
    puts("Delegating #{name} message to subject.")
    @subject.send(name, *args)
  end
end

class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end

class VirtualProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def method_missing(name, *args)
    s = subject
    s.send(name, *args)
  end

  def subject
    @subject = @creation_block.call unless @subject
    @subject
  end
end
ap = AccountProxy.new( BankAccount.new(100))
ap.deposit(25)
ap.withdraw(50)
puts("account balance is now: #{ap.balance}")
