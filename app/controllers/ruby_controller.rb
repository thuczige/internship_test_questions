class RubyController < ApplicationController
  include CommonExam

  def new
  end

  def create
    create_examination(:ruby)
  end

  private

  def question_template
    [
      {
        id: 1,
        question: "Ruby là ngôn ngữ lập trình loại nào?",
        options: {
          A: "Lập trình thủ tục",
          B: "Lập trình hướng đối tượng",
          C: "Lập trình hàm",
          D: "Tất cả các loại trên"
        },
        answer: :D
      },
      {
        id: 2,
        question: "Lệnh nào dùng để khai báo một biến trong Ruby?",
        options: {
          A: "var",
          B: "let",
          C: "const",
          D: "Không có lệnh đặc biệt"
        },
        answer: :D
      },
      {
        id: 3,
        question: "Lệnh nào dùng để in ra màn hình trong Ruby?",
        options: {
          A: "print()",
          B: "puts()",
          C: "echo()",
          D: "write()"
        },
        answer: :B
      },
      {
        id: 4,
        question: "Ký hiệu nào dùng để khai báo một mảng trong Ruby?",
        options: {
          A: "[]",
          B: "{}",
          C: "()",
          D: "<>"
        },
        answer: :A
      },
      {
        id: 5,
        question: "Câu lệnh nào dùng để kiểm tra kiểu dữ liệu của một đối tượng?",
        options: {
          A: ".class",
          B: ".type",
          C: ".typeof",
          D: ".is_a?"
        },
        answer: :A
      },
      {
        id: 6,
        question: "Phương thức nào dùng để thêm một phần tử vào cuối mảng?",
        options: {
          A: "push()",
          B: "append()",
          C: "insert()",
          D: "add()"
        },
        answer: :A
      },
      {
        id: 7,
        question: "Phương thức nào dùng để xóa phần tử cuối cùng của một mảng?",
        options: {
          A: "pop()",
          B: "remove()",
          C: "delete()",
          D: "shift()"
        },
        answer: :A
      },
      {
        id: 8,
        question: "Câu lệnh nào dùng để kiểm tra nếu một biến có giá trị nil?",
        options: {
          A: ".nil?",
          B: ".empty?",
          C: ".blank?",
          D: ".none?"
        },
        answer: :A
      },
      {
        id: 9,
        question: "Phương thức nào dùng để chuyển đổi một chuỗi thành chữ thường?",
        options: {
          A: "downcase",
          B: "lowercase",
          C: "toLowerCase",
          D: "lower"
        },
        answer: :A
      },
      {
        id: 10,
        question: "Phương thức nào dùng để lấy phần tử đầu tiên của một mảng?",
        options: {
          A: "first",
          B: "shift",
          C: "pop",
          D: "head"
        },
        answer: :A
      },
      {
        id: 11,
        question: "Lệnh nào dùng để kiểm tra một điều kiện trong Ruby?",
        options: {
          A: "if",
          B: "while",
          C: "for",
          D: "switch"
        },
        answer: :A
      },
      {
        id: 12,
        question: "Phương thức nào dùng để thêm một phần tử vào đầu mảng?",
        options: {
          A: "unshift",
          B: "push",
          C: "shift",
          D: "prepend"
        },
        answer: :A
      },
      {
        id: 13,
        question: "Phương thức nào dùng để kiểm tra xem một mảng có chứa một phần tử cụ thể hay không?",
        options: {
          A: "include?",
          B: "contains?",
          C: "has?",
          D: "indexOf?"
        },
        answer: :A
      },
      {
        id: 14,
        question: "Câu lệnh nào dùng để thoát khỏi vòng lặp trong Ruby?",
        options: {
          A: "break",
          B: "exit",
          C: "stop",
          D: "return"
        },
        answer: :A
      },
      {
        id: 15,
        question: "Phương thức nào dùng để lấy độ dài của một chuỗi trong Ruby?",
        options: {
          A: "length",
          B: "size",
          C: "count",
          D: "chars"
        },
        answer: :A
      },
      {
        id: 16,
        question: "Phương thức nào dùng để nối hai chuỗi trong Ruby?",
        options: {
          A: "+",
          B: "&",
          C: "concat",
          D: "append"
        },
        answer: :A
      },
      {
        id: 17,
        question: "Phương thức nào dùng để tạo một chuỗi mới từ một mảng các phần tử trong Ruby?",
        options: {
          A: "join",
          B: "concat",
          C: "slice",
          D: "split"
        },
        answer: :A
      },
      {
        id: 18,
        question: "Phương thức nào dùng để kiểm tra một đối tượng có thuộc tính cụ thể hay không?",
        options: {
          A: "respond_to?",
          B: "has_key?",
          C: "include?",
          D: "contain?"
        },
        answer: :A
      },
      {
        id: 19,
        question: "Phương thức nào dùng để sao chép một mảng trong Ruby?",
        options: {
          A: "clone",
          B: "copy",
          C: "dup",
          D: "replicate"
        },
        answer: :C
      },
      {
        id: 20,
        question: "Phương thức nào dùng để chuyển đổi một đối tượng thành chuỗi?",
        options: {
          A: "to_s",
          B: "to_str",
          C: "stringify",
          D: "convert_to_string"
        },
        answer: :A
      },
      {
        id: 21,
        question: "Phương thức nào dùng để kiểm tra xem một số là số chẵn?",
        options: {
          A: "even?",
          B: "odd?",
          C: "divisible_by?",
          D: "mod2?"
        },
        answer: :A
      },
      {
        id: 22,
        question: "Phương thức nào dùng để kiểm tra xem một số là số lẻ?",
        options: {
          A: "odd?",
          B: "even?",
          C: "divisible_by?",
          D: "mod2?"
        },
        answer: :A
      },
      {
        id: 23,
        question: "Phương thức nào dùng để thêm một cặp khóa-giá trị vào Hash?",
        options: {
          A: "store",
          B: "put",
          C: "add",
          D: "insert"
        },
        answer: :A
      },
      {
        id: 24,
        question: "Lệnh nào dùng để tạo một đối tượng mới từ một lớp trong Ruby?",
        options: {
          A: "ClassName.new",
          B: "ClassName.create",
          C: "new ClassName",
          D: "ClassName()"
        },
        answer: :A
      },
      {
        id: 25,
        question: "Phương thức nào dùng để xóa phần tử đầu tiên của mảng?",
        options: {
          A: "shift",
          B: "unshift",
          C: "pop",
          D: "delete_at"
        },
        answer: :A
      },
      {
        id: 26,
        question: "Lệnh nào dùng để lặp qua các phần tử của mảng?",
        options: {
          A: "each",
          B: "for",
          C: "while",
          D: "loop"
        },
        answer: :A
      },
      {
        id: 27,
        question: "Câu lệnh nào dùng để kiểm tra một giá trị là số trong Ruby?",
        options: {
          A: ".is_a?(Numeric)",
          B: ".is_number?",
          C: ".numeric?",
          D: ".is_a_number?"
        },
        answer: :A
      },
      {
        id: 28,
        question: "Phương thức nào dùng để trả về một mảng chứa tất cả các khóa của Hash?",
        options: {
          A: "keys",
          B: "values",
          C: "key_list",
          D: "hash_keys"
        },
        answer: :A
      },
      {
        id: 29,
        question: "Lệnh nào dùng để tạo một mảng trống trong Ruby?",
        options: {
          A: "[]",
          B: "Array.new",
          C: "Array()",
          D: "Tất cả các đáp án trên"
        },
        answer: :D
      },
      {
        id: 30,
        question: "Lệnh nào dùng để kiểm tra xem một mảng có rỗng hay không?",
        options: {
          A: "empty?",
          B: "length == 0",
          C: "size == 0",
          D: "Tất cả các đáp án trên"
        },
        answer: :D
      },
      {
        id: 31,
        question: "Phương thức nào dùng để xóa tất cả các phần tử trong mảng?",
        options: {
          A: "clear",
          B: "delete_all",
          C: "remove_all",
          D: "purge"
        },
        answer: :A
      },
      {
        id: 32,
        question: "Phương thức nào dùng để xóa một phần tử khỏi Hash?",
        options: {
          A: "delete",
          B: "remove",
          C: "del",
          D: "erase"
        },
        answer: :A
      },
      {
        id: 33,
        question: "Lệnh nào dùng để tạo một chuỗi mới trong Ruby?",
        options: {
          A: "'string'",
          B: '"string"',
          C: "String.new",
          D: "Tất cả các đáp án trên"
        },
        answer: :D
      },
      {
        id: 34,
        question: "Phương thức nào dùng để chuyển đổi một chuỗi thành số nguyên trong Ruby?",
        options: {
          A: "to_i",
          B: "to_int",
          C: "parseInt",
          D: "int()"
        },
        answer: :A
      },
      {
        id: 35,
        question: "Phương thức nào dùng để kiểm tra xem một chuỗi có bắt đầu với một chuỗi con cụ thể không?",
        options: {
          A: "start_with?",
          B: "begin_with?",
          C: "has_prefix?",
          D: "match?"
        },
        answer: :A
      },
      {
        id: 36,
        question: "Phương thức nào dùng để kiểm tra xem một chuỗi có kết thúc với một chuỗi con cụ thể không?",
        options: {
          A: "end_with?",
          B: "finish_with?",
          C: "has_suffix?",
          D: "match?"
        },
        answer: :A
      },
      {
        id: 37,
        question: "Phương thức nào dùng để kiểm tra xem một đối tượng là nil?",
        options: {
          A: "nil?",
          B: "is_nil?",
          C: "empty?",
          D: "none?"
        },
        answer: :A
      },
      {
        id: 38,
        question: "Phương thức nào dùng để nối tất cả các phần tử của một mảng thành một chuỗi?",
        options: {
          A: "join",
          B: "concat",
          C: "merge",
          D: "implode"
        },
        answer: :A
      },
      {
        id: 39,
        question: "Phương thức nào dùng để kiểm tra xem một mảng có chứa một giá trị cụ thể không?",
        options: {
          A: "include?",
          B: "contains?",
          C: "has_value?",
          D: "in_array?"
        },
        answer: :A
      },
      {
        id: 40,
        question: "Phương thức nào dùng để lấy số phần tử của một mảng?",
        options: {
          A: "length",
          B: "size",
          C: "count",
          D: "Tất cả các đáp án trên"
        },
        answer: :D
      }
    ]
  end
end
