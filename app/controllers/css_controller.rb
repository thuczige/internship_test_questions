class CssController < ApplicationController
  include CommonExam

  def new
  end

  def create
    create_examination(:css)
  end

  private

  def question_template
    [
      {
        id: 1,
        question: "CSS là viết tắt của từ gì?",
        options: {
          A: "Cascading Style Sheets",
          B: "Cascading Simple Sheets",
          C: "Cascading System Sheets",
          D: "Cascading Style System"
        },
        answer: :A
      },
      {
        id: 2,
        question: "Thuộc tính nào trong CSS dùng để thay đổi màu nền của một phần tử?",
        options: {
          A: "color",
          B: "background-color",
          C: "bgcolor",
          D: "background"
        },
        answer: :B
      },
      {
        id: 3,
        question: "CSS dùng để làm gì trong một trang web?",
        options: {
          A: "Định dạng nội dung",
          B: "Thiết kế giao diện",
          C: "Thêm nội dung",
          D: "Tạo liên kết"
        },
        answer: :B
      },
      {
        id: 4,
        question: "Thuộc tính nào trong CSS dùng để thay đổi cỡ chữ?",
        options: {
          A: "font-size",
          B: "text-size",
          C: "font-weight",
          D: "text-style"
        },
        answer: :A
      },
      {
        id: 5,
        question: "Giá trị nào của thuộc tính `display` sẽ ẩn phần tử khỏi trang?",
        options: {
          A: "block",
          B: "inline",
          C: "none",
          D: "hidden"
        },
        answer: :C
      },
      {
        id: 6,
        question: "Thuộc tính `margin` dùng để làm gì?",
        options: {
          A: "Thêm khoảng cách giữa các phần tử",
          B: "Thêm đường viền cho phần tử",
          C: "Thêm khoảng cách giữa nội dung và viền",
          D: "Thêm nền cho phần tử"
        },
        answer: :A
      },
      {
        id: 7,
        question: "Thuộc tính `padding` trong CSS được sử dụng để làm gì?",
        options: {
          A: "Thêm khoảng cách giữa các phần tử",
          B: "Thêm đường viền cho phần tử",
          C: "Thêm khoảng cách giữa nội dung và viền",
          D: "Thêm nền cho phần tử"
        },
        answer: :C
      },
      {
        id: 8,
        question: "Giá trị `absolute` của thuộc tính `position` trong CSS dùng để làm gì?",
        options: {
          A: "Định vị phần tử dựa trên vị trí của phần tử cha",
          B: "Định vị phần tử dựa trên vị trí của cửa sổ trình duyệt",
          C: "Làm cho phần tử hiển thị dưới dạng dòng",
          D: "Làm cho phần tử hiển thị dưới dạng khối"
        },
        answer: :A
      },
      {
        id: 9,
        question: "Thuộc tính nào trong CSS dùng để thay đổi kiểu chữ?",
        options: {
          A: "font-style",
          B: "text-transform",
          C: "font-weight",
          D: "font-family"
        },
        answer: :D
      },
      {
        id: 10,
        question: "Giá trị `bold` của thuộc tính `font-weight` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi cỡ chữ",
          B: "Làm đậm chữ",
          C: "Làm nghiêng chữ",
          D: "Thay đổi kiểu chữ"
        },
        answer: :B
      },
      {
        id: 11,
        question: "Thuộc tính nào trong CSS dùng để thay đổi màu chữ?",
        options: {
          A: "color",
          B: "font-color",
          C: "text-color",
          D: "background-color"
        },
        answer: :A
      },
      {
        id: 12,
        question: "Giá trị `center` của thuộc tính `text-align` trong CSS dùng để làm gì?",
        options: {
          A: "Căn chỉnh văn bản sang trái",
          B: "Căn chỉnh văn bản sang phải",
          C: "Căn chỉnh văn bản ở giữa",
          D: "Căn chỉnh văn bản đều hai bên"
        },
        answer: :C
      },
      {
        id: 13,
        question: "Thuộc tính `border` trong CSS được sử dụng để làm gì?",
        options: {
          A: "Thêm đường viền cho phần tử",
          B: "Thêm khoảng cách giữa các phần tử",
          C: "Thêm khoảng cách giữa nội dung và viền",
          D: "Thêm nền cho phần tử"
        },
        answer: :A
      },
      {
        id: 14,
        question: "Thuộc tính `overflow` trong CSS dùng để làm gì?",
        options: {
          A: "Quản lý cách hiển thị nội dung vượt quá kích thước của phần tử",
          B: "Thêm khoảng cách giữa các phần tử",
          C: "Thêm đường viền cho phần tử",
          D: "Thêm nền cho phần tử"
        },
        answer: :A
      },
      {
        id: 15,
        question: "Giá trị `block` của thuộc tính `display` trong CSS dùng để làm gì?",
        options: {
          A: "Hiển thị phần tử dưới dạng dòng",
          B: "Hiển thị phần tử dưới dạng khối",
          C: "Ẩn phần tử",
          D: "Hiển thị phần tử cố định"
        },
        answer: :B
      },
      {
        id: 16,
        question: "Thuộc tính `z-index` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi độ trong suốt của phần tử",
          B: "Thay đổi thứ tự xếp chồng của phần tử",
          C: "Thay đổi kiểu chữ",
          D: "Thay đổi kích thước của phần tử"
        },
        answer: :B
      },
      {
        id: 17,
        question: "Thuộc tính `opacity` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi độ trong suốt của phần tử",
          B: "Thay đổi kích thước của phần tử",
          C: "Thay đổi kiểu chữ",
          D: "Thay đổi màu sắc của phần tử"
        },
        answer: :A
      },
      {
        id: 18,
        question: "Giá trị `none` của thuộc tính `display` trong CSS dùng để làm gì?",
        options: {
          A: "Ẩn phần tử",
          B: "Hiển thị phần tử dưới dạng dòng",
          C: "Hiển thị phần tử dưới dạng khối",
          D: "Hiển thị phần tử cố định"
        },
        answer: :A
      },
      {
        id: 19,
        question: "Thuộc tính `float` trong CSS dùng để làm gì?",
        options: {
          A: "Định vị phần tử sang trái hoặc phải và cho phép các phần tử khác bao quanh nó",
          B: "Định vị phần tử cố định trên màn hình",
          C: "Làm cho phần tử hiển thị dưới dạng khối",
          D: "Làm cho phần tử hiển thị dưới dạng dòng"
        },
        answer: :A
      },
      {
        id: 20,
        question: "Thuộc tính `clear` trong CSS dùng để làm gì?",
        options: {
          A: "Ngăn các phần tử khác bao quanh phần tử đã được float",
          B: "Định vị phần tử cố định trên màn hình",
          C: "Làm cho phần tử hiển thị dưới dạng khối",
          D: "Làm cho phần tử hiển thị dưới dạng dòng"
        },
        answer: :A
      },
      {
        id: 21,
        question: "Giá trị `inline` của thuộc tính `display` trong CSS dùng để làm gì?",
        options: {
          A: "Hiển thị phần tử dưới dạng dòng",
          B: "Hiển thị phần tử dưới dạng khối",
          C: "Ẩn phần tử",
          D: "Hiển thị phần tử cố định"
        },
        answer: :A
      },
      {
        id: 22,
        question: "Thuộc tính `width` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi chiều rộng của phần tử",
          B: "Thay đổi chiều cao của phần tử",
          C: "Thay đổi cỡ chữ",
          D: "Thay đổi kiểu chữ"
        },
        answer: :A
      },
      {
        id: 23,
        question: "Thuộc tính `height` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi chiều rộng của phần tử",
          B: "Thay đổi chiều cao của phần tử",
          C: "Thay đổi cỡ chữ",
          D: "Thay đổi kiểu chữ"
        },
        answer: :B
      },
      {
        id: 24,
        question: "Thuộc tính `background-image` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi màu nền của phần tử",
          B: "Thêm hình ảnh nền cho phần tử",
          C: "Thêm đường viền cho phần tử",
          D: "Thêm khoảng cách giữa các phần tử"
        },
        answer: :B
      },
      {
        id: 25,
        question: "Thuộc tính `background-repeat` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi màu nền của phần tử",
          B: "Thêm hình ảnh nền cho phần tử",
          C: "Quản lý cách lặp lại hình ảnh nền",
          D: "Thay đổi vị trí của hình ảnh nền"
        },
        answer: :C
      },
      {
        id: 26,
        question: "Giá trị `none` của thuộc tính `list-style` trong CSS dùng để làm gì?",
        options: {
          A: "Xóa dấu đầu dòng trong danh sách",
          B: "Thay đổi kiểu dấu đầu dòng trong danh sách",
          C: "Thay đổi khoảng cách giữa các mục trong danh sách",
          D: "Thay đổi vị trí của dấu đầu dòng trong danh sách"
        },
        answer: :A
      },
      {
        id: 27,
        question: "Thuộc tính `text-decoration` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi kiểu chữ",
          B: "Thêm gạch dưới, gạch ngang, hoặc gạch đôi vào văn bản",
          C: "Thay đổi cỡ chữ",
          D: "Thay đổi màu chữ"
        },
        answer: :B
      },
      {
        id: 28,
        question: "Giá trị `uppercase` của thuộc tính `text-transform` trong CSS dùng để làm gì?",
        options: {
          A: "Viết hoa tất cả các chữ cái",
          B: "Viết thường tất cả các chữ cái",
          C: "Viết hoa chữ cái đầu tiên của mỗi từ",
          D: "Không thay đổi chữ cái"
        },
        answer: :A
      },
      {
        id: 29,
        question: "Thuộc tính `letter-spacing` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi khoảng cách giữa các dòng",
          B: "Thay đổi khoảng cách giữa các chữ cái",
          C: "Thay đổi kiểu chữ",
          D: "Thay đổi cỡ chữ"
        },
        answer: :B
      },
      {
        id: 30,
        question: "Thuộc tính `line-height` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi khoảng cách giữa các dòng",
          B: "Thay đổi khoảng cách giữa các chữ cái",
          C: "Thay đổi kiểu chữ",
          D: "Thay đổi cỡ chữ"
        },
        answer: :A
      },
      {
        id: 31,
        question: "Thuộc tính `text-shadow` trong CSS dùng để làm gì?",
        options: {
          A: "Thêm bóng đổ cho chữ",
          B: "Thay đổi kiểu chữ",
          C: "Thay đổi cỡ chữ",
          D: "Thêm gạch dưới cho chữ"
        },
        answer: :A
      },
      {
        id: 32,
        question: "Thuộc tính `box-shadow` trong CSS dùng để làm gì?",
        options: {
          A: "Thêm bóng đổ cho phần tử",
          B: "Thay đổi kích thước của phần tử",
          C: "Thay đổi vị trí của phần tử",
          D: "Thay đổi màu nền của phần tử"
        },
        answer: :A
      },
      {
        id: 33,
        question: "Thuộc tính `transition` trong CSS dùng để làm gì?",
        options: {
          A: "Thêm hiệu ứng chuyển đổi giữa các trạng thái của phần tử",
          B: "Thay đổi màu nền của phần tử",
          C: "Thay đổi kích thước của phần tử",
          D: "Thay đổi vị trí của phần tử"
        },
        answer: :A
      },
      {
        id: 34,
        question: "Thuộc tính `transform` trong CSS dùng để làm gì?",
        options: {
          A: "Xoay, co giãn, hoặc di chuyển phần tử",
          B: "Thay đổi màu nền của phần tử",
          C: "Thay đổi kích thước của phần tử",
          D: "Thay đổi vị trí của phần tử"
        },
        answer: :A
      },
      {
        id: 35,
        question: "Thuộc tính `cursor` trong CSS dùng để làm gì?",
        options: {
          A: "Thay đổi kiểu con trỏ chuột khi di chuyển qua phần tử",
          B: "Thay đổi kích thước của phần tử",
          C: "Thay đổi màu nền của phần tử",
          D: "Thay đổi vị trí của phần tử"
        },
        answer: :A
      },
      {
        id: 36,
        question: "Giá trị `fixed` của thuộc tính `position` trong CSS dùng để làm gì?",
        options: {
          A: "Định vị phần tử cố định trên màn hình",
          B: "Định vị phần tử dựa trên vị trí của phần tử cha",
          C: "Làm cho phần tử hiển thị dưới dạng khối",
          D: "Làm cho phần tử hiển thị dưới dạng dòng"
        },
        answer: :A
      },
      {
        id: 37,
        question: "Thuộc tính `visibility` trong CSS dùng để làm gì?",
        options: {
          A: "Quản lý hiển thị hoặc ẩn phần tử",
          B: "Thay đổi độ trong suốt của phần tử",
          C: "Thay đổi vị trí của phần tử",
          D: "Thay đổi kích thước của phần tử"
        },
        answer: :A
      },
      {
        id: 38,
        question: "Giá trị `inline-block` của thuộc tính `display` trong CSS dùng để làm gì?",
        options: {
          A: "Hiển thị phần tử dưới dạng khối nhưng không chiếm toàn bộ chiều rộng của phần tử cha",
          B: "Hiển thị phần tử dưới dạng dòng",
          C: "Ẩn phần tử",
          D: "Hiển thị phần tử cố định"
        },
        answer: :A
      },
      {
        id: 39,
        question: "Thuộc tính `min-width` trong CSS dùng để làm gì?",
        options: {
          A: "Thiết lập chiều rộng tối thiểu cho phần tử",
          B: "Thiết lập chiều rộng tối đa cho phần tử",
          C: "Thay đổi chiều rộng của phần tử",
          D: "Thay đổi chiều cao của phần tử"
        },
        answer: :A
      },
      {
        id: 40,
        question: "Thuộc tính `max-height` trong CSS dùng để làm gì?",
        options: {
          A: "Thiết lập chiều cao tối thiểu cho phần tử",
          B: "Thiết lập chiều cao tối đa cho phần tử",
          C: "Thay đổi chiều cao của phần tử",
          D: "Thay đổi chiều rộng của phần tử"
        },
        answer: :B
      }
    ]
  end
end
