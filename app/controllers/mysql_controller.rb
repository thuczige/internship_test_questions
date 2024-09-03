class MysqlController < ApplicationController
  include CommonExam

  def new
  end

  def create
    create_examination(:mysql)
  end

  private

  def question_template
    [
      {
        id: 1,
        question: "MySQL là gì?",
        options: {
          A: "Một hệ quản trị cơ sở dữ liệu quan hệ",
          B: "Một ngôn ngữ lập trình",
          C: "Một hệ điều hành",
          D: "Một công cụ phát triển web"
        },
        answer: :A
      },
      {
        id: 2,
        question: "Câu lệnh nào dùng để chọn cơ sở dữ liệu để làm việc?",
        options: {
          A: "USE database_name;",
          B: "SELECT database_name;",
          C: "CHOOSE database_name;",
          D: "WORK WITH database_name;"
        },
        answer: :A
      },
      {
        id: 3,
        question: "Câu lệnh nào dùng để tạo một cơ sở dữ liệu mới trong MySQL?",
        options: {
          A: "CREATE DATABASE database_name;",
          B: "CREATE DB database_name;",
          C: "NEW DATABASE database_name;",
          D: "ADD DATABASE database_name;"
        },
        answer: :A
      },
      {
        id: 4,
        question: "Câu lệnh nào dùng để xóa một cơ sở dữ liệu trong MySQL?",
        options: {
          A: "DROP DATABASE database_name;",
          B: "DELETE DATABASE database_name;",
          C: "REMOVE DATABASE database_name;",
          D: "DESTROY DATABASE database_name;"
        },
        answer: :A
      },
      {
        id: 5,
        question: "Câu lệnh nào dùng để tạo một bảng mới trong MySQL?",
        options: {
          A: "CREATE TABLE table_name (columns);",
          B: "NEW TABLE table_name (columns);",
          C: "ADD TABLE table_name (columns);",
          D: "MAKE TABLE table_name (columns);"
        },
        answer: :A
      },
      {
        id: 6,
        question: "Câu lệnh nào dùng để thêm một cột mới vào bảng đã tồn tại?",
        options: {
          A: "ALTER TABLE table_name ADD column_name datatype;",
          B: "MODIFY TABLE table_name ADD column_name datatype;",
          C: "ADD COLUMN column_name datatype TO table_name;",
          D: "INSERT COLUMN column_name datatype INTO table_name;"
        },
        answer: :A
      },
      {
        id: 7,
        question: "Câu lệnh nào dùng để xóa một bảng trong MySQL?",
        options: {
          A: "DROP TABLE table_name;",
          B: "DELETE TABLE table_name;",
          C: "REMOVE TABLE table_name;",
          D: "DESTROY TABLE table_name;"
        },
        answer: :A
      },
      {
        id: 8,
        question: "Câu lệnh nào dùng để thêm một hàng mới vào bảng?",
        options: {
          A: "INSERT INTO table_name (columns) VALUES (values);",
          B: "ADD INTO table_name (columns) VALUES (values);",
          C: "INSERT ROW INTO table_name (columns) VALUES (values);",
          D: "ADD ROW INTO table_name (columns) VALUES (values);"
        },
        answer: :A
      },
      {
        id: 9,
        question: "Câu lệnh nào dùng để cập nhật dữ liệu của một hàng trong bảng?",
        options: {
          A: "UPDATE table_name SET column_name = value WHERE condition;",
          B: "MODIFY table_name SET column_name = value WHERE condition;",
          C: "CHANGE table_name SET column_name = value WHERE condition;",
          D: "ALTER table_name SET column_name = value WHERE condition;"
        },
        answer: :A
      },
      {
        id: 10,
        question: "Câu lệnh nào dùng để xóa dữ liệu của một hàng trong bảng?",
        options: {
          A: "DELETE FROM table_name WHERE condition;",
          B: "REMOVE FROM table_name WHERE condition;",
          C: "DROP FROM table_name WHERE condition;",
          D: "DESTROY FROM table_name WHERE condition;"
        },
        answer: :A
      },
      {
        id: 11,
        question: "Câu lệnh nào dùng để lấy dữ liệu từ một bảng?",
        options: {
          A: "SELECT * FROM table_name;",
          B: "FETCH * FROM table_name;",
          C: "GET * FROM table_name;",
          D: "RETRIEVE * FROM table_name;"
        },
        answer: :A
      },
      {
        id: 12,
        question: "Câu lệnh nào dùng để lấy các hàng duy nhất từ một bảng?",
        options: {
          A: "SELECT DISTINCT column_name FROM table_name;",
          B: "SELECT UNIQUE column_name FROM table_name;",
          C: "SELECT DIFFERENT column_name FROM table_name;",
          D: "SELECT DISTINCTIVE column_name FROM table_name;"
        },
        answer: :A
      },
      {
        id: 13,
        question: "Câu lệnh nào dùng để sắp xếp dữ liệu theo thứ tự tăng dần?",
        options: {
          A: "SELECT * FROM table_name ORDER BY column_name ASC;",
          B: "SELECT * FROM table_name ORDER BY column_name DESC;",
          C: "SORT * FROM table_name BY column_name ASC;",
          D: "ORDER * FROM table_name BY column_name ASC;"
        },
        answer: :A
      },
      {
        id: 14,
        question: "Câu lệnh nào dùng để sắp xếp dữ liệu theo thứ tự giảm dần?",
        options: {
          A: "SELECT * FROM table_name ORDER BY column_name DESC;",
          B: "SELECT * FROM table_name ORDER BY column_name ASC;",
          C: "SORT * FROM table_name BY column_name DESC;",
          D: "ORDER * FROM table_name BY column_name DESC;"
        },
        answer: :A
      },
      {
        id: 15,
        question: "Câu lệnh nào dùng để đếm số lượng hàng trong một bảng?",
        options: {
          A: "SELECT COUNT(*) FROM table_name;",
          B: "SELECT SUM(*) FROM table_name;",
          C: "SELECT NUMBER(*) FROM table_name;",
          D: "SELECT TOTAL(*) FROM table_name;"
        },
        answer: :A
      },
      {
        id: 16,
        question: "Câu lệnh nào dùng để lấy giá trị lớn nhất từ một cột?",
        options: {
          A: "SELECT MAX(column_name) FROM table_name;",
          B: "SELECT MIN(column_name) FROM table_name;",
          C: "SELECT HIGHEST(column_name) FROM table_name;",
          D: "SELECT TOP(column_name) FROM table_name;"
        },
        answer: :A
      },
      {
        id: 17,
        question: "Câu lệnh nào dùng để lấy giá trị nhỏ nhất từ một cột?",
        options: {
          A: "SELECT MIN(column_name) FROM table_name;",
          B: "SELECT MAX(column_name) FROM table_name;",
          C: "SELECT LOWEST(column_name) FROM table_name;",
          D: "SELECT BOTTOM(column_name) FROM table_name;"
        },
        answer: :A
      },
      {
        id: 18,
        question: "Câu lệnh nào dùng để tính tổng các giá trị trong một cột?",
        options: {
          A: "SELECT SUM(column_name) FROM table_name;",
          B: "SELECT TOTAL(column_name) FROM table_name;",
          C: "SELECT ADD(column_name) FROM table_name;",
          D: "SELECT AGGREGATE(column_name) FROM table_name;"
        },
        answer: :A
      },
      {
        id: 19,
        question: "Câu lệnh nào dùng để tính giá trị trung bình của một cột?",
        options: {
          A: "SELECT AVG(column_name) FROM table_name;",
          B: "SELECT MEAN(column_name) FROM table_name;",
          C: "SELECT AVERAGE(column_name) FROM table_name;",
          D: "SELECT MEDIAN(column_name) FROM table_name;"
        },
        answer: :A
      },
      {
        id: 20,
        question: "Câu lệnh nào dùng để tạo một khóa chính trong MySQL?",
        options: {
          A: "PRIMARY KEY",
          B: "FOREIGN KEY",
          C: "UNIQUE KEY",
          D: "INDEX KEY"
        },
        answer: :A
      },
      {
        id: 21,
        question: "Câu lệnh nào dùng để tạo một khóa ngoại trong MySQL?",
        options: {
          A: "FOREIGN KEY",
          B: "PRIMARY KEY",
          C: "UNIQUE KEY",
          D: "INDEX KEY"
        },
        answer: :A
      },
      {
        id: 22,
        question: "Câu lệnh nào dùng để tạo một chỉ mục trong MySQL?",
        options: {
          A: "CREATE INDEX",
          B: "CREATE KEY",
          C: "CREATE POINTER",
          D: "CREATE REFERENCE"
        },
        answer: :A
      },
      {
        id: 23,
        question: "Câu lệnh nào dùng để thêm dữ liệu từ một bảng vào một bảng khác?",
        options: {
          A: "INSERT INTO table_name SELECT * FROM other_table;",
          B: "COPY INTO table_name SELECT * FROM other_table;",
          C: "MOVE INTO table_name SELECT * FROM other_table;",
          D: "TRANSFER INTO table_name SELECT * FROM other_table;"
        },
        answer: :A
      },
      {
        id: 24,
        question: "Câu lệnh nào dùng để tạo một view trong MySQL?",
        options: {
          A: "CREATE VIEW view_name AS SELECT * FROM table_name;",
          B: "CREATE TABLE view_name AS SELECT * FROM table_name;",
          C: "CREATE SELECT view_name AS SELECT * FROM table_name;",
          D: "CREATE SCREEN view_name AS SELECT * FROM table_name;"
        },
        answer: :A
      },
      {
        id: 25,
        question: "Câu lệnh nào dùng để cập nhật cấu trúc của một bảng trong MySQL?",
        options: {
          A: "ALTER TABLE",
          B: "MODIFY TABLE",
          C: "CHANGE TABLE",
          D: "UPDATE TABLE"
        },
        answer: :A
      },
      {
        id: 26,
        question: "Câu lệnh nào dùng để kiểm tra thông tin chi tiết của một bảng?",
        options: {
          A: "DESCRIBE table_name;",
          B: "DETAIL table_name;",
          C: "SHOW table_name;",
          D: "VIEW table_name;"
        },
        answer: :A
      },
      {
        id: 27,
        question: "Câu lệnh nào dùng để kiểm tra tất cả các bảng trong cơ sở dữ liệu hiện tại?",
        options: {
          A: "SHOW TABLES;",
          B: "LIST TABLES;",
          C: "VIEW TABLES;",
          D: "DISPLAY TABLES;"
        },
        answer: :A
      },
      {
        id: 28,
        question: "Câu lệnh nào dùng để kiểm tra tất cả các cơ sở dữ liệu có sẵn?",
        options: {
          A: "SHOW DATABASES;",
          B: "LIST DATABASES;",
          C: "VIEW DATABASES;",
          D: "DISPLAY DATABASES;"
        },
        answer: :A
      },
      {
        id: 29,
        question: "Câu lệnh nào dùng để kiểm tra tất cả các cột của một bảng?",
        options: {
          A: "SHOW COLUMNS FROM table_name;",
          B: "LIST COLUMNS FROM table_name;",
          C: "VIEW COLUMNS FROM table_name;",
          D: "DISPLAY COLUMNS FROM table_name;"
        },
        answer: :A
      },
      {
        id: 30,
        question: "Câu lệnh nào dùng để thay đổi tên của một bảng?",
        options: {
          A: "RENAME TABLE old_table_name TO new_table_name;",
          B: "ALTER TABLE old_table_name RENAME TO new_table_name;",
          C: "MODIFY TABLE old_table_name RENAME TO new_table_name;",
          D: "CHANGE TABLE old_table_name RENAME TO new_table_name;"
        },
        answer: :A
      },
      {
        id: 31,
        question: "Câu lệnh nào dùng để tạm ngừng kiểm tra khóa ngoại?",
        options: {
          A: "SET FOREIGN_KEY_CHECKS=0;",
          B: "SET FOREIGN_KEYS_OFF;",
          C: "DISABLE FOREIGN_KEYS;",
          D: "IGNORE FOREIGN_KEYS;"
        },
        answer: :A
      },
      {
        id: 32,
        question: "Câu lệnh nào dùng để kích hoạt lại kiểm tra khóa ngoại?",
        options: {
          A: "SET FOREIGN_KEY_CHECKS=1;",
          B: "SET FOREIGN_KEYS_ON;",
          C: "ENABLE FOREIGN_KEYS;",
          D: "CHECK FOREIGN_KEYS;"
        },
        answer: :A
      },
      {
        id: 33,
        question: "Câu lệnh nào dùng để tạo một trigger trong MySQL?",
        options: {
          A: "CREATE TRIGGER trigger_name BEFORE INSERT ON table_name FOR EACH ROW BEGIN ... END;",
          B: "CREATE PROCEDURE trigger_name BEFORE INSERT ON table_name FOR EACH ROW BEGIN ... END;",
          C: "CREATE FUNCTION trigger_name BEFORE INSERT ON table_name FOR EACH ROW BEGIN ... END;",
          D: "CREATE EVENT trigger_name BEFORE INSERT ON table_name FOR EACH ROW BEGIN ... END;"
        },
        answer: :A
      },
      {
        id: 34,
        question: "Câu lệnh nào dùng để tạo một stored procedure trong MySQL?",
        options: {
          A: "CREATE PROCEDURE procedure_name() BEGIN ... END;",
          B: "CREATE FUNCTION procedure_name() BEGIN ... END;",
          C: "CREATE TRIGGER procedure_name() BEGIN ... END;",
          D: "CREATE EVENT procedure_name() BEGIN ... END;"
        },
        answer: :A
      },
      {
        id: 35,
        question: "Câu lệnh nào dùng để tạo một stored function trong MySQL?",
        options: {
          A: "CREATE FUNCTION function_name() RETURNS datatype BEGIN ... END;",
          B: "CREATE PROCEDURE function_name() RETURNS datatype BEGIN ... END;",
          C: "CREATE TRIGGER function_name() RETURNS datatype BEGIN ... END;",
          D: "CREATE EVENT function_name() RETURNS datatype BEGIN ... END;"
        },
        answer: :A
      },
      {
        id: 36,
        question: "Câu lệnh nào dùng để tạo một sự kiện (event) trong MySQL?",
        options: {
          A: "CREATE EVENT event_name ON SCHEDULE ... DO ...;",
          B: "CREATE FUNCTION event_name ON SCHEDULE ... DO ...;",
          C: "CREATE PROCEDURE event_name ON SCHEDULE ... DO ...;",
          D: "CREATE TRIGGER event_name ON SCHEDULE ... DO ...;"
        },
        answer: :A
      },
      {
        id: 37,
        question: "Câu lệnh nào dùng để hiển thị tất cả các trigger của một bảng?",
        options: {
          A: "SHOW TRIGGERS FROM table_name;",
          B: "LIST TRIGGERS FROM table_name;",
          C: "VIEW TRIGGERS FROM table_name;",
          D: "DISPLAY TRIGGERS FROM table_name;"
        },
        answer: :A
      },
      {
        id: 38,
        question: "Câu lệnh nào dùng để tắt một trigger?",
        options: {
          A: "ALTER TRIGGER trigger_name DISABLE;",
          B: "MODIFY TRIGGER trigger_name DISABLE;",
          C: "CHANGE TRIGGER trigger_name DISABLE;",
          D: "UPDATE TRIGGER trigger_name DISABLE;"
        },
        answer: :A
      },
      {
        id: 39,
        question: "Câu lệnh nào dùng để bật lại một trigger?",
        options: {
          A: "ALTER TRIGGER trigger_name ENABLE;",
          B: "MODIFY TRIGGER trigger_name ENABLE;",
          C: "CHANGE TRIGGER trigger_name ENABLE;",
          D: "UPDATE TRIGGER trigger_name ENABLE;"
        },
        answer: :A
      },
      {
        id: 40,
        question: "Câu lệnh nào dùng để xóa một trigger?",
        options: {
          A: "DROP TRIGGER trigger_name;",
          B: "DELETE TRIGGER trigger_name;",
          C: "REMOVE TRIGGER trigger_name;",
          D: "DESTROY TRIGGER trigger_name;"
        },
        answer: :A
      }
    ]
  end
end
