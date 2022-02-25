# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

departments = Department.create!(
    [
        { name: 'IT' },
        { name: 'Accounts' }
    ]
)
Employee.create!(
    [    
        {
            first_name: 'abc', 
            last_name: 'Patel',
            email_address: 'txt@gmail.com',
            phone: 1010,
            salary: 1000000.00,
            department_id: departments.first.id
        },
        {
            first_name: 'Pooja', 
            last_name: 'Sharma',
            email_address: 'abc@gmail.com',
            phone: 1234567,
            salary: 300000.00,
            department_id: departments.last.id
        }
    ]
)