describe Parish do
  before { @parish = Parish.new(name: 'Church 1',
                                pastor: 'John Paul',
                                admin_name: 'Mike',
                                admin_email: 'mike@example.com',
                                admin_email_type: 'Home',
                                admin_primary_phone: '1112223333',
                                admin_primary_phone_type: 'Cell',
                                address_1: '1234 Main St.',
                                address_2: 'PO Box 123',
                                city: 'Nowhere',
                                state: 'CO',
                                zip: '80000'
                                ) }

    subject { @parish }

    it { should respond_to :name }
    it { should respond_to :pastor }
    it { should respond_to :address_1 }
    it { should respond_to :address_2 }
    it { should respond_to :city }
    it { should respond_to :state }
    it { should respond_to :zip }
    it { should respond_to :primary_phone }
    it { should respond_to :primary_phone_type }
    it { should respond_to :secondary_phone }
    it { should respond_to :secondary_phone_type }
    it { should respond_to :email }
    it { should respond_to :secondary_email }
    it { should respond_to :admin_name }
    it { should respond_to :admin_email }
    it { should respond_to :admin_email_type }
    it { should respond_to :admin_primary_phone }
    it { should respond_to :admin_primary_phone_type }

    it { should be_valid }

    describe 'when name is not present' do
      before { @parish.name = ' ' }
      it { should_not be_valid }
    end

    describe 'when pastor is not present' do
      before { @parish.pastor = ' ' }
      it { should_not be_valid }
    end

    describe 'when address_1 is not present' do
      before { @parish.address_1 = ' ' }
      it { should_not be_valid }
    end

    describe 'when address_2 is not present' do
      before { @parish.address_2 = ' ' }
      it { should_not be_valid }
    end

    describe 'when city is not present' do
      before { @parish.city = ' ' }
      it { should_not be_valid }
    end

    describe 'when state is not present' do
      before { @parish.state = ' ' }
      it { should_not be_valid }
    end

    describe 'when zip is not present' do
      before { @parish.zip = ' ' }
      it { should_not be_valid }
    end

    describe 'when admin_name is not present' do
      before { @parish.admin_name = ' ' }
      it { should_not be_valid }
    end

    describe 'when admin_email is not present' do
      before { @parish.admin_email = ' ' }
      it { should_not be_valid }
    end

    describe 'when admin_email_type is not present' do
      before { @parish.admin_email_type = ' ' }
      it { should_not be_valid }
    end

    describe 'when admin_primary_phone is not present' do
      before { @parish.admin_primary_phone = ' ' }
      it { should_not be_valid }
    end

    describe 'when admin_primary_phone_type is not present' do
      before { @parish.admin_primary_phone_type = ' ' }
      it { should_not be_valid }
    end

end
