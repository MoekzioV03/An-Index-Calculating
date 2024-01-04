import sys
from PyQt5.QtWidgets import QApplication
from ip_calc import IP_Calc

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = IP_Calc()
    window.show()
    sys.exit(app.exec_())