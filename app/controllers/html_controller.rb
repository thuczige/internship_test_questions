class HtmlController < ApplicationController
  include CommonExam

  def new
  end

  def create
    create_examination(:html)
  end

  private

  def question_template
    [
      {
        id: 1,
        question: "HTML là viết tắt của từ gì?",
        options: {
          A: "Hyper Text Markup Language",
          B: "Home Tool Markup Language",
          C: "Hyperlinks and Text Markup Language",
          D: "Hyper Text Machine Language"
        },
        answer: :A
      },
      {
        id: 2,
        question: "Thẻ HTML nào được sử dụng để tạo tiêu đề lớn nhất?",
        options: {
          A: "<h1>",
          B: "<heading>",
          C: "<h6>",
          D: "<head>"
        },
        answer: :A
      },
      {
        id: 3,
        question: "Thẻ nào trong HTML được sử dụng để chèn liên kết?",
        options: {
          A: "<a>",
          B: "<link>",
          C: "<href>",
          D: "<url>"
        },
        answer: :A
      },
      {
        id: 4,
        question: "Thuộc tính nào trong HTML được sử dụng để xác định URL của một liên kết?",
        options: {
          A: "src",
          B: "href",
          C: "link",
          D: "url"
        },
        answer: :B
      },
      {
        id: 5,
        question: "Thẻ HTML nào dùng để chèn hình ảnh vào trang web?",
        options: {
          A: "<img>",
          B: "<image>",
          C: "<src>",
          D: "<picture>"
        },
        answer: :A
      },
      {
        id: 6,
        question: "Thuộc tính nào trong HTML được sử dụng để xác định chiều rộng của hình ảnh?",
        options: {
          A: "length",
          B: "width",
          C: "size",
          D: "height"
        },
        answer: :B
      },
      {
        id: 7,
        question: "Thẻ HTML nào dùng để tạo danh sách không có thứ tự (bullet list)?",
        options: {
          A: "<ul>",
          B: "<ol>",
          C: "<li>",
          D: "<dl>"
        },
        answer: :A
      },
      {
        id: 8,
        question: "Thẻ HTML nào dùng để tạo một hàng trong bảng?",
        options: {
          A: "<tr>",
          B: "<td>",
          C: "<th>",
          D: "<table>"
        },
        answer: :A
      },
      {
        id: 9,
        question: "Thẻ HTML nào dùng để tạo một ô trong bảng?",
        options: {
          A: "<tr>",
          B: "<td>",
          C: "<th>",
          D: "<table>"
        },
        answer: :B
      },
      {
        id: 10,
        question: "Thuộc tính nào trong HTML dùng để tạo liên kết mở trong một tab mới?",
        options: {
          A: "target='_new'",
          B: "target='_self'",
          C: "target='_blank'",
          D: "target='_tab'"
        },
        answer: :C
      },
      {
        id: 11,
        question: "Thẻ HTML nào dùng để tạo một biểu mẫu (form)?",
        options: {
          A: "<form>",
          B: "<input>",
          C: "<textarea>",
          D: "<button>"
        },
        answer: :A
      },
      {
        id: 12,
        question: "Thẻ nào trong HTML dùng để chèn dòng ngang (horizontal line)?",
        options: {
          A: "<hr>",
          B: "<line>",
          C: "<br>",
          D: "<div>"
        },
        answer: :A
      },
      {
        id: 13,
        question: "Thuộc tính nào trong HTML dùng để xác định tiêu đề của tài liệu?",
        options: {
          A: "<head>",
          B: "<title>",
          C: "<header>",
          D: "<meta>"
        },
        answer: :B
      },
      {
        id: 14,
        question: "Thẻ nào trong HTML dùng để tạo đoạn văn bản?",
        options: {
          A: "<paragraph>",
          B: "<text>",
          C: "<p>",
          D: "<div>"
        },
        answer: :C
      },
      {
        id: 15,
        question: "Thẻ HTML nào dùng để nhúng video vào trang web?",
        options: {
          A: "<video>",
          B: "<media>",
          C: "<movie>",
          D: "<embed>"
        },
        answer: :A
      },
      {
        id: 16,
        question: "Thẻ HTML nào dùng để định nghĩa phần chân trang (footer) của tài liệu?",
        options: {
          A: "<footer>",
          B: "<bottom>",
          C: "<end>",
          D: "<section>"
        },
        answer: :A
      },
      {
        id: 17,
        question: "Thẻ nào trong HTML dùng để xác định phần đầu trang (header)?",
        options: {
          A: "<header>",
          B: "<head>",
          C: "<top>",
          D: "<section>"
        },
        answer: :A
      },
      {
        id: 18,
        question: "Thuộc tính nào trong HTML dùng để xác định kiểu biểu mẫu gửi dữ liệu?",
        options: {
          A: "method",
          B: "action",
          C: "enctype",
          D: "type"
        },
        answer: :A
      },
      {
        id: 19,
        question: "Thẻ HTML nào dùng để tạo danh sách có thứ tự (numbered list)?",
        options: {
          A: "<ol>",
          B: "<ul>",
          C: "<li>",
          D: "<dl>"
        },
        answer: :A
      },
      {
        id: 20,
        question: "Thẻ HTML nào dùng để tạo trường nhập liệu (input field)?",
        options: {
          A: "<input>",
          B: "<textarea>",
          C: "<form>",
          D: "<button>"
        },
        answer: :A
      },
      {
        id: 21,
        question: "Thuộc tính nào trong HTML dùng để xác định đường dẫn tới tập tin CSS?",
        options: {
          A: "rel",
          B: "href",
          C: "src",
          D: "type"
        },
        answer: :B
      },
      {
        id: 22,
        question: "Thẻ HTML nào dùng để nhúng audio vào trang web?",
        options: {
          A: "<audio>",
          B: "<sound>",
          C: "<music>",
          D: "<embed>"
        },
        answer: :A
      },
      {
        id: 23,
        question: "Thẻ HTML nào dùng để tạo tiêu đề nhỏ nhất?",
        options: {
          A: "<h6>",
          B: "<h1>",
          C: "<h3>",
          D: "<h4>"
        },
        answer: :A
      },
      {
        id: 24,
        question: "Thuộc tính nào trong HTML dùng để xác định loại tập tin tài liệu?",
        options: {
          A: "type",
          B: "rel",
          C: "href",
          D: "src"
        },
        answer: :A
      },
      {
        id: 25,
        question: "Thẻ HTML nào dùng để tạo một khối trích dẫn?",
        options: {
          A: "<blockquote>",
          B: "<quote>",
          C: "<cite>",
          D: "<q>"
        },
        answer: :A
      },
      {
        id: 26,
        question: "Thẻ HTML nào dùng để tạo danh sách định nghĩa?",
        options: {
          A: "<dl>",
          B: "<ul>",
          C: "<ol>",
          D: "<li>"
        },
        answer: :A
      },
      {
        id: 27,
        question: "Thẻ HTML nào dùng để tạo tiêu đề cho một nhóm điều khiển trong form?",
        options: {
          A: "<legend>",
          B: "<fieldset>",
          C: "<caption>",
          D: "<label>"
        },
        answer: :A
      },
      {
        id: 28,
        question: "Thuộc tính nào trong HTML dùng để gắn nhãn cho một điều khiển trong form?",
        options: {
          A: "label",
          B: "name",
          C: "for",
          D: "id"
        },
        answer: :C
      },
      {
        id: 29,
        question: "Thẻ HTML nào dùng để tạo một bảng (table)?",
        options: {
          A: "<table>",
          B: "<tr>",
          C: "<td>",
          D: "<th>"
        },
        answer: :A
      },
      {
        id: 30,
        question: "Thuộc tính nào trong HTML dùng để định nghĩa giá trị mặc định cho trường nhập liệu?",
        options: {
          A: "value",
          B: "default",
          C: "placeholder",
          D: "name"
        },
        answer: :A
      },
      {
        id: 31,
        question: "Thẻ HTML nào dùng để chèn một đoạn mã nhúng từ tập tin bên ngoài?",
        options: {
          A: "<embed>",
          B: "<iframe>",
          C: "<object>",
          D: "<script>"
        },
        answer: :D
      },
      {
        id: 32,
        question: "Thuộc tính nào trong HTML dùng để xác định độ cao của hình ảnh?",
        options: {
          A: "height",
          B: "size",
          C: "length",
          D: "width"
        },
        answer: :A
      },
      {
        id: 33,
        question: "Thẻ HTML nào dùng để tạo một dòng ngắt (line break)?",
        options: {
          A: "<br>",
          B: "<hr>",
          C: "<line>",
          D: "<div>"
        },
        answer: :A
      },
      {
        id: 34,
        question: "Thẻ HTML nào dùng để định nghĩa một tài liệu HTML5?",
        options: {
          A: "<!DOCTYPE html>",
          B: "<html>",
          C: "<head>",
          D: "<meta>"
        },
        answer: :A
      },
      {
        id: 35,
        question: "Thẻ HTML nào dùng để tạo một khối chứa nội dung có dạng khối?",
        options: {
          A: "<div>",
          B: "<span>",
          C: "<block>",
          D: "<section>"
        },
        answer: :A
      },
      {
        id: 36,
        question: "Thẻ HTML nào dùng để nhúng biểu tượng cho trang web?",
        options: {
          A: "<link>",
          B: "<meta>",
          C: "<icon>",
          D: "<favicon>"
        },
        answer: :A
      },
      {
        id: 37,
        question: "Thẻ HTML nào dùng để tạo một vùng văn bản có thể cuộn trong một form?",
        options: {
          A: "<textarea>",
          B: "<input>",
          C: "<div>",
          D: "<form>"
        },
        answer: :A
      },
      {
        id: 38,
        question: "Thẻ HTML nào dùng để tạo một mục chọn trong danh sách thả xuống (dropdown)?",
        options: {
          A: "<option>",
          B: "<select>",
          C: "<input>",
          D: "<list>"
        },
        answer: :A
      },
      {
        id: 39,
        question: "Thuộc tính nào trong HTML dùng để tạo một nút gửi dữ liệu trong form?",
        options: {
          A: "type='submit'",
          B: "type='button'",
          C: "type='reset'",
          D: "type='send'"
        },
        answer: :A
      },
      {
        id: 40,
        question: "Thẻ HTML nào dùng để định nghĩa một dòng trong danh sách định nghĩa?",
        options: {
          A: "<dd>",
          B: "<dt>",
          C: "<dl>",
          D: "<li>"
        },
        answer: :A
      }
    ]
  end
end
