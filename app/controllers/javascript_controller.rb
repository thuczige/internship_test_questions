class JavascriptController < ApplicationController
  include CommonExam

  def new
  end

  def create
    create_examination(:javascript)
  end

  private

  def question_template
    [
      {
        id: 1,
        question: "JavaScript là ngôn ngữ loại nào?",
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
        question: "Lệnh nào dùng để khai báo một biến trong JavaScript?",
        options: {
          A: "var",
          B: "let",
          C: "const",
          D: "Tất cả các đáp án trên"
        },
        answer: :D
      },
      {
        id: 3,
        question: "Phương thức nào dùng để chuyển đổi dữ liệu sang kiểu chuỗi trong JavaScript?",
        options: {
          A: "toString()",
          B: "toText()",
          C: "parseString()",
          D: "convertToString()"
        },
        answer: :A
      },
      {
        id: 4,
        question: "Phương thức nào dùng để kết hợp các phần tử của một mảng thành một chuỗi?",
        options: {
          A: "concat()",
          B: "join()",
          C: "combine()",
          D: "merge()"
        },
        answer: :B
      },
      {
        id: 5,
        question: "Câu lệnh nào dùng để kiểm tra kiểu dữ liệu của một biến?",
        options: {
          A: "typeof",
          B: "getType",
          C: "checkType",
          D: "varType"
        },
        answer: :A
      },
      {
        id: 6,
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
        id: 7,
        question: "Phương thức nào dùng để thêm một hoặc nhiều phần tử vào cuối mảng?",
        options: {
          A: "push()",
          B: "unshift()",
          C: "concat()",
          D: "append()"
        },
        answer: :A
      },
      {
        id: 8,
        question: "Câu lệnh nào dùng để chuyển đổi một chuỗi thành một số nguyên?",
        options: {
          A: "parseInt()",
          B: "parseFloat()",
          C: "Number()",
          D: "toInteger()"
        },
        answer: :A
      },
      {
        id: 9,
        question: "Câu lệnh nào dùng để thêm một phần tử vào đầu mảng?",
        options: {
          A: "unshift()",
          B: "push()",
          C: "shift()",
          D: "prepend()"
        },
        answer: :A
      },
      {
        id: 10,
        question: "Câu lệnh nào dùng để kiểm tra nếu một biến có giá trị là NaN?",
        options: {
          A: "isNaN()",
          B: "checkNaN()",
          C: "NaN()",
          D: "isNotNumber()"
        },
        answer: :A
      },
      {
        id: 11,
        question: "Phương thức nào dùng để xóa khoảng trắng ở đầu và cuối chuỗi?",
        options: {
          A: "trim()",
          B: "strip()",
          C: "clean()",
          D: "slice()"
        },
        answer: :A
      },
      {
        id: 12,
        question: "Phương thức nào dùng để tìm chỉ số của một phần tử trong mảng?",
        options: {
          A: "indexOf()",
          B: "findIndex()",
          C: "search()",
          D: "positionOf()"
        },
        answer: :A
      },
      {
        id: 13,
        question: "Lệnh nào dùng để kiểm tra một biểu thức điều kiện?",
        options: {
          A: "if",
          B: "while",
          C: "for",
          D: "switch"
        },
        answer: :A
      },
      {
        id: 14,
        question: "Phương thức nào dùng để sao chép một phần của mảng thành một mảng mới?",
        options: {
          A: "slice()",
          B: "splice()",
          C: "copy()",
          D: "map()"
        },
        answer: :A
      },
      {
        id: 15,
        question: "Câu lệnh nào dùng để lặp qua các phần tử của mảng?",
        options: {
          A: "for",
          B: "foreach",
          C: "map",
          D: "tất cả các đáp án trên"
        },
        answer: :D
      },
      {
        id: 16,
        question: "Phương thức nào dùng để chuyển đổi tất cả các ký tự trong chuỗi thành chữ thường?",
        options: {
          A: "toLowerCase()",
          B: "toUpperCase()",
          C: "lowercase()",
          D: "convertToLower()"
        },
        answer: :A
      },
      {
        id: 17,
        question: "Phương thức nào dùng để đảo ngược thứ tự của các phần tử trong mảng?",
        options: {
          A: "reverse()",
          B: "invert()",
          C: "flip()",
          D: "swap()"
        },
        answer: :A
      },
      {
        id: 18,
        question: "Câu lệnh nào dùng để tạo ra một đối tượng mới?",
        options: {
          A: "new Object()",
          B: "create Object()",
          C: "make Object()",
          D: "init Object()"
        },
        answer: :A
      },
      {
        id: 19,
        question: "Câu lệnh nào dùng để kiểm tra một điều kiện trong JavaScript?",
        options: {
          A: "if",
          B: "for",
          C: "do-while",
          D: "switch"
        },
        answer: :A
      },
      {
        id: 20,
        question: "Phương thức nào dùng để nối hai hoặc nhiều chuỗi?",
        options: {
          A: "concat()",
          B: "join()",
          C: "append()",
          D: "merge()"
        },
        answer: :A
      },
      {
        id: 21,
        question: "Phương thức nào dùng để lấy phần tử đầu tiên của một mảng?",
        options: {
          A: "shift()",
          B: "pop()",
          C: "getFirst()",
          D: "head()"
        },
        answer: :A
      },
      {
        id: 22,
        question: "Câu lệnh nào dùng để thoát khỏi vòng lặp trong JavaScript?",
        options: {
          A: "break",
          B: "exit",
          C: "stop",
          D: "return"
        },
        answer: :A
      },
      {
        id: 23,
        question: "Phương thức nào dùng để tìm một phần tử trong mảng thỏa mãn điều kiện?",
        options: {
          A: "find()",
          B: "filter()",
          C: "search()",
          D: "query()"
        },
        answer: :A
      },
      {
        id: 24,
        question: "Phương thức nào dùng để chuyển đổi một chuỗi thành số nguyên?",
        options: {
          A: "parseInt()",
          B: "parseFloat()",
          C: "toInteger()",
          D: "Number()"
        },
        answer: :A
      },
      {
        id: 25,
        question: "Phương thức nào dùng để tạo một chuỗi từ một mảng?",
        options: {
          A: "join()",
          B: "concat()",
          C: "slice()",
          D: "split()"
        },
        answer: :A
      },
      {
        id: 26,
        question: "Phương thức nào dùng để kiểm tra xem một mảng có chứa một phần tử cụ thể hay không?",
        options: {
          A: "includes()",
          B: "contains()",
          C: "has()",
          D: "indexOf()"
        },
        answer: :A
      },
      {
        id: 27,
        question: "Phương thức nào dùng để tạo ra một mảng mới từ các phần tử được chọn của mảng hiện tại?",
        options: {
          A: "filter()",
          B: "map()",
          C: "reduce()",
          D: "select()"
        },
        answer: :A
      },
      {
        id: 28,
        question: "Phương thức nào dùng để kiểm tra xem một đối tượng có thuộc tính cụ thể hay không?",
        options: {
          A: "hasOwnProperty()",
          B: "hasAttribute()",
          C: "contains()",
          D: "getProperty()"
        },
        answer: :A
      },
      {
        id: 29,
        question: "Phương thức nào dùng để tạo một đối tượng mới kế thừa từ một đối tượng hiện có?",
        options: {
          A: "Object.create()",
          B: "Object.assign()",
          C: "Object.clone()",
          D: "Object.extend()"
        },
        answer: :A
      },
      {
        id: 30,
        question: "Phương thức nào dùng để kiểm tra xem một chuỗi có bắt đầu bằng một chuỗi con cụ thể hay không?",
        options: {
          A: "startsWith()",
          B: "beginsWith()",
          C: "hasPrefix()",
          D: "starts()"
        },
        answer: :A
      },
      {
        id: 31,
        question: "Phương thức nào dùng để kiểm tra xem một chuỗi có kết thúc bằng một chuỗi con cụ thể hay không?",
        options: {
          A: "endsWith()",
          B: "finishesWith()",
          C: "hasSuffix()",
          D: "ends()"
        },
        answer: :A
      },
      {
        id: 32,
        question: "Phương thức nào dùng để tạo một chuỗi mới lặp lại một chuỗi hiện có nhiều lần?",
        options: {
          A: "repeat()",
          B: "loop()",
          C: "multiply()",
          D: "recur()"
        },
        answer: :A
      },
      {
        id: 33,
        question: "Phương thức nào dùng để nối hai hoặc nhiều mảng?",
        options: {
          A: "concat()",
          B: "join()",
          C: "append()",
          D: "merge()"
        },
        answer: :A
      },
      {
        id: 34,
        question: "Phương thức nào dùng để giảm một mảng xuống thành một giá trị duy nhất?",
        options: {
          A: "reduce()",
          B: "sum()",
          C: "collapse()",
          D: "aggregate()"
        },
        answer: :A
      },
      {
        id: 35,
        question: "Phương thức nào dùng để trả về một chuỗi đại diện cho một đối tượng?",
        options: {
          A: "toString()",
          B: "toText()",
          C: "serialize()",
          D: "stringify()"
        },
        answer: :A
      },
      {
        id: 36,
        question: "Phương thức nào dùng để làm trống một mảng?",
        options: {
          A: "array.length = 0",
          B: "array.clear()",
          C: "array.empty()",
          D: "array.deleteAll()"
        },
        answer: :A
      },
      {
        id: 37,
        question: "Phương thức nào dùng để kiểm tra xem một giá trị có phải là một số hữu hạn hay không?",
        options: {
          A: "isFinite()",
          B: "isNumber()",
          C: "isFiniteNumber()",
          D: "isFloat()"
        },
        answer: :A
      },
      {
        id: 38,
        question: "Phương thức nào dùng để trả về số lượng ký tự trong một chuỗi?",
        options: {
          A: "length",
          B: "size",
          C: "count",
          D: "chars"
        },
        answer: :A
      },
      {
        id: 39,
        question: "Câu lệnh nào dùng để thêm một đoạn mã JavaScript vào trong một trang HTML?",
        options: {
          A: "<script>",
          B: "<style>",
          C: "<link>",
          D: "<meta>"
        },
        answer: :A
      },
      {
        id: 40,
        question: "Phương thức nào dùng để ngăn sự kiện mặc định của một phần tử xảy ra?",
        options: {
          A: "preventDefault()",
          B: "stopEvent()",
          C: "halt()",
          D: "stopPropagation()"
        },
        answer: :A
      }
    ]
  end
end
