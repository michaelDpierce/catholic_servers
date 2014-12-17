describe User do
  before { @user = User.new(email: 'test@example.com',
                            password: 'foobar22',
                            password_confirmation: 'foobar22',
                            first_name: 'Michael',
                            last_name: 'Pierce' ) }

  subject { @user }

  it { should respond_to :email }
  it { should respond_to :password }
  it { should respond_to :password_confirmation }
  it { should respond_to :first_name }
  it { should respond_to :last_name }
  it { should respond_to :primary_phone }
  it { should respond_to :primary_phone_type }
  it { should respond_to :secondary_phone }
  it { should respond_to :secondary_phone_type }
  it { should respond_to :address_1 }
  it { should respond_to :address_2 }
  it { should respond_to :city }
  it { should respond_to :state }
  it { should respond_to :zip }
  it { should respond_to :parish_id }

  it { should be_valid }

  describe 'when password is too short' do
    before { @user.password = 'foo' }
    it { should_not be_valid }
  end

  describe 'when first name is not present' do
    before { @user.first_name = ' ' }
    it { should_not be_valid }
  end

  describe 'when last name is not present' do
    before { @user.last_name = ' ' }
    it { should_not be_valid }
  end

  describe 'when email is not present' do
    before { @user.email = ' ' }
    it { should_not be_valid }
  end

  describe 'when email address is already taken' do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe 'when password is not present' do
    before { @user.password = @user.password_confirmation = ' ' }
    it { should_not be_valid }
  end
end
