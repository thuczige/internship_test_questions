class GitController < ApplicationController
  include CommonExam

  def new
  end

  def create
    create_examination(:git)
  end

  private

  def question_template
    [
      {
        id: 1,
        question: "Git là gì?",
        options: {
          A: "Một hệ thống quản lý cơ sở dữ liệu",
          B: "Một công cụ lập trình",
          C: "Một hệ thống quản lý phiên bản phân tán",
          D: "Một công cụ thiết kế web"
        },
        answer: :C
      },
      {
        id: 2,
        question: "Câu lệnh nào dùng để kiểm tra phiên bản Git đang cài đặt?",
        options: {
          A: "git --version",
          B: "git version",
          C: "git -v",
          D: "git check-version"
        },
        answer: :A
      },
      {
        id: 3,
        question: "Câu lệnh nào dùng để khởi tạo một kho lưu trữ Git mới?",
        options: {
          A: "git init",
          B: "git start",
          C: "git new",
          D: "git create"
        },
        answer: :A
      },
      {
        id: 4,
        question: "Câu lệnh nào dùng để sao chép một kho lưu trữ từ xa về máy tính?",
        options: {
          A: "git clone",
          B: "git copy",
          C: "git pull",
          D: "git fetch"
        },
        answer: :A
      },
      {
        id: 5,
        question: "Câu lệnh nào dùng để kiểm tra trạng thái của kho lưu trữ?",
        options: {
          A: "git status",
          B: "git check",
          C: "git info",
          D: "git log"
        },
        answer: :A
      },
      {
        id: 6,
        question: "Câu lệnh nào dùng để thêm các thay đổi vào staging area?",
        options: {
          A: "git add",
          B: "git stage",
          C: "git commit",
          D: "git push"
        },
        answer: :A
      },
      {
        id: 7,
        question: "Câu lệnh nào dùng để ghi lại các thay đổi vào kho lưu trữ?",
        options: {
          A: "git commit",
          B: "git add",
          C: "git push",
          D: "git save"
        },
        answer: :A
      },
      {
        id: 8,
        question: "Câu lệnh nào dùng để xem lịch sử commit?",
        options: {
          A: "git log",
          B: "git history",
          C: "git commits",
          D: "git show"
        },
        answer: :A
      },
      {
        id: 9,
        question: "Câu lệnh nào dùng để tạo một nhánh mới trong Git?",
        options: {
          A: "git branch",
          B: "git new-branch",
          C: "git create-branch",
          D: "git checkout -b"
        },
        answer: :D
      },
      {
        id: 10,
        question: "Câu lệnh nào dùng để chuyển sang một nhánh khác?",
        options: {
          A: "git checkout",
          B: "git switch",
          C: "git change-branch",
          D: "git branch-switch"
        },
        answer: :A
      },
      {
        id: 11,
        question: "Câu lệnh nào dùng để hợp nhất các thay đổi từ một nhánh khác vào nhánh hiện tại?",
        options: {
          A: "git merge",
          B: "git combine",
          C: "git join",
          D: "git integrate"
        },
        answer: :A
      },
      {
        id: 12,
        question: "Câu lệnh nào dùng để xóa một nhánh trong Git?",
        options: {
          A: "git branch -d",
          B: "git delete-branch",
          C: "git remove-branch",
          D: "git branch-remove"
        },
        answer: :A
      },
      {
        id: 13,
        question: "Câu lệnh nào dùng để kiểm tra các nhánh hiện có trong Git?",
        options: {
          A: "git branch",
          B: "git list-branches",
          C: "git show-branches",
          D: "git branches"
        },
        answer: :A
      },
      {
        id: 14,
        question: "Câu lệnh nào dùng để lưu các thay đổi tạm thời mà không cần commit?",
        options: {
          A: "git stash",
          B: "git save",
          C: "git temp-save",
          D: "git hold"
        },
        answer: :A
      },
      {
        id: 15,
        question: "Câu lệnh nào dùng để lấy các thay đổi đã lưu tạm thời ra khỏi stash?",
        options: {
          A: "git stash pop",
          B: "git stash apply",
          C: "git stash pull",
          D: "git stash restore"
        },
        answer: :A
      },
      {
        id: 16,
        question: "Câu lệnh nào dùng để hiển thị các thay đổi giữa hai commit?",
        options: {
          A: "git diff",
          B: "git compare",
          C: "git changes",
          D: "git show"
        },
        answer: :A
      },
      {
        id: 17,
        question: "Câu lệnh nào dùng để tạo một tag trong Git?",
        options: {
          A: "git tag",
          B: "git create-tag",
          C: "git add-tag",
          D: "git label"
        },
        answer: :A
      },
      {
        id: 18,
        question: "Câu lệnh nào dùng để tải lên các thay đổi từ kho lưu trữ cục bộ lên kho lưu trữ từ xa?",
        options: {
          A: "git push",
          B: "git upload",
          C: "git send",
          D: "git transfer"
        },
        answer: :A
      },
      {
        id: 19,
        question: "Câu lệnh nào dùng để lấy các thay đổi từ kho lưu trữ từ xa về máy tính?",
        options: {
          A: "git pull",
          B: "git fetch",
          C: "git clone",
          D: "git update"
        },
        answer: :A
      },
      {
        id: 20,
        question: "Câu lệnh nào dùng để liên kết một kho lưu trữ cục bộ với một kho lưu trữ từ xa?",
        options: {
          A: "git remote add",
          B: "git remote connect",
          C: "git link",
          D: "git sync"
        },
        answer: :A
      },
      {
        id: 21,
        question: "Câu lệnh nào dùng để kiểm tra các remote hiện có?",
        options: {
          A: "git remote -v",
          B: "git remote list",
          C: "git remote show",
          D: "git remotes"
        },
        answer: :A
      },
      {
        id: 22,
        question: "Câu lệnh nào dùng để xóa một remote?",
        options: {
          A: "git remote remove",
          B: "git remote delete",
          C: "git remove remote",
          D: "git delete remote"
        },
        answer: :A
      },
      {
        id: 23,
        question: "Câu lệnh nào dùng để undo một commit đã được ghi nhận?",
        options: {
          A: "git revert",
          B: "git undo",
          C: "git reset",
          D: "git rollback"
        },
        answer: :A
      },
      {
        id: 24,
        question: "Câu lệnh nào dùng để thay đổi thông tin của commit gần nhất?",
        options: {
          A: "git commit --amend",
          B: "git commit --edit",
          C: "git commit --modify",
          D: "git commit --change"
        },
        answer: :A
      },
      {
        id: 25,
        question: "Câu lệnh nào dùng để xóa một file khỏi kho lưu trữ và hệ thống file?",
        options: {
          A: "git rm",
          B: "git delete",
          C: "git remove",
          D: "git del"
        },
        answer: :A
      },
      {
        id: 26,
        question: "Câu lệnh nào dùng để chỉ xóa một file khỏi kho lưu trữ nhưng giữ lại trong hệ thống file?",
        options: {
          A: "git rm --cached",
          B: "git rm --keep",
          C: "git delete --cached",
          D: "git remove --keep"
        },
        answer: :A
      },
      {
        id: 27,
        question: "Câu lệnh nào dùng để so sánh trạng thái của kho lưu trữ cục bộ và từ xa?",
        options: {
          A: "git fetch",
          B: "git compare",
          C: "git check",
          D: "git diff"
        },
        answer: :A
      },
      {
        id: 28,
        question: "Câu lệnh nào dùng để tải về các thay đổi từ kho lưu trữ từ xa nhưng không merge?",
        options: {
          A: "git fetch",
          B: "git pull --no-merge",
          C: "git download",
          D: "git retrieve"
        },
        answer: :A
      },
      {
        id: 29,
        question: "Câu lệnh nào dùng để tạo một commit không ảnh hưởng đến lịch sử commit hiện có?",
        options: {
          A: "git commit --squash",
          B: "git commit --no-ff",
          C: "git commit --amend",
          D: "git commit --fixup"
        },
        answer: :D
      },
      {
        id: 30,
        question: "Câu lệnh nào dùng để gộp các commit liên tiếp lại thành một?",
        options: {
          A: "git rebase -i",
          B: "git merge --squash",
          C: "git commit --fixup",
          D: "git commit --amend"
        },
        answer: :A
      },
      {
        id: 31,
        question: "Câu lệnh nào dùng để dừng một rebase đang diễn ra?",
        options: {
          A: "git rebase --abort",
          B: "git rebase --cancel",
          C: "git rebase --stop",
          D: "git rebase --quit"
        },
        answer: :A
      },
      {
        id: 32,
        question: "Câu lệnh nào dùng để xem các xung đột đang diễn ra trong quá trình merge?",
        options: {
          A: "git status",
          B: "git conflicts",
          C: "git merge --conflicts",
          D: "git show --conflicts"
        },
        answer: :A
      },
      {
        id: 33,
        question: "Câu lệnh nào dùng để bỏ qua một commit trong quá trình rebase?",
        options: {
          A: "git rebase --skip",
          B: "git rebase --omit",
          C: "git rebase --ignore",
          D: "git rebase --pass"
        },
        answer: :A
      },
      {
        id: 34,
        question: "Câu lệnh nào dùng để thay đổi vị trí của một commit trong lịch sử commit?",
        options: {
          A: "git rebase",
          B: "git cherry-pick",
          C: "git amend",
          D: "git reorder"
        },
        answer: :A
      },
      {
        id: 35,
        question: "Câu lệnh nào dùng để xem lịch sử thay đổi của một file cụ thể?",
        options: {
          A: "git log --follow file_name",
          B: "git history file_name",
          C: "git show file_name",
          D: "git diff file_name"
        },
        answer: :A
      },
      {
        id: 36,
        question: "Câu lệnh nào dùng để tạo một commit với tất cả các thay đổi được tạm thời?",
        options: {
          A: "git stash save --include-untracked",
          B: "git stash save --all",
          C: "git stash save --keep-index",
          D: "git stash save --patch"
        },
        answer: :B
      },
      {
        id: 37,
        question: "Câu lệnh nào dùng để tải về các thay đổi và thực hiện merge tự động?",
        options: {
          A: "git pull",
          B: "git fetch --merge",
          C: "git sync",
          D: "git download --merge"
        },
        answer: :A
      },
      {
        id: 38,
        question: "Câu lệnh nào dùng để thay đổi URL của remote?",
        options: {
          A: "git remote set-url",
          B: "git remote update-url",
          C: "git remote change-url",
          D: "git remote modify-url"
        },
        answer: :A
      },
      {
        id: 39,
        question: "Câu lệnh nào dùng để hiển thị các thay đổi chưa được staged?",
        options: {
          A: "git diff",
          B: "git diff --cached",
          C: "git diff --staged",
          D: "git diff --all"
        },
        answer: :A
      },
      {
        id: 40,
        question: "Câu lệnh nào dùng để thiết lập user name và email cho Git?",
        options: {
          A: "git config --global user.name 'Name' && git config --global user.email 'email@example.com'",
          B: "git set-username 'Name' && git set-useremail 'email@example.com'",
          C: "git set-user 'Name' 'email@example.com'",
          D: "git config --user.name 'Name' && git config --user.email 'email@example.com'"
        },
        answer: :A
      }
    ]
  end
end
