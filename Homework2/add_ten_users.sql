# Добавим 10 пользователейalter
USE vk;

INSERT INTO users (firstname, lastname, email, password_hash, phone)
VALUES
('Andrey', 'Horlov', 'an@gmail.com', '12345', 3255568825),
('Andrey', 'Orlov', 'anorl@gmail.com', '325689', 3255888825),
('Oleg', 'Olegov', 'olol@gmail.com', 'cdcdcdc', 3255563565),
('Dorofey', 'Horlov', 'dh@gmail.com', '516asdss', 3895568825),
('Petr', 'Petrov', 'pp@gmail.com', '12345asd', 3252228825),
('Vasiliy', 'Vasiliev', 'vv@gmail.com', '12ads345', 3254788825),
('Ivan', 'Turgenev', 'tur@gmail.com', 'tursdff', 3255486925),
('Izia', 'Rabinovich', 'jude@gmail.com', '1234assffs5', 3256968825),
('Moshe', 'Perelman', 'evrey@gmail.com', '1234dsf5', 3255578925),
('John', 'Lennon', 'engl_man@gmail.com', '12345adad', 3255856825);