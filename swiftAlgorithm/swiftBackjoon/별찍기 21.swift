import Foundation

func solution10996() {
    var n = Int(readLine()!)!

    for I in 0 ..< n {
        if n % 2 == 0 {
            var ans = ""
            for I in 0 ..< (2 * n - 1) / 2 {
                if I % 2 == 0 {
                    ans += "*"
                } else {
                    ans += " "
                }
            }
            print(ans)
            print(" " + ans)
        } else {
            var ans = ""
            for I in 0 ..< (2 * n ) / 2 {
                if I % 2 == 0 {
                    ans += "*"
                } else {
                    ans += " "
                }
            }
            print(ans)
            ans.removeLast()
            print(" " + ans)
        }
    }
}
