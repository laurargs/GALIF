git init

git clone


git config --global user.name "Matheus Ataide"
git config --global user.email matheusataide.al@gmail.com



BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      cabecalho1();
                    });
                  },
                  child: Icon(Icons.add_alert, size: 40)),
              label: ""),
