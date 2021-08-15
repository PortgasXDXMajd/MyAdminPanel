const rootRoute = '/';

const overViewDisplayName = "Overview";
const overViewPageRoute = "/overview";


const driversDisplayName = "Drivers";
const driversPageRoute = "/drivers";

const clientsDisplayName = "Clients";
const clientsPageRoute = "/clients";

const authenticationDisplayName = "Log out";
const authenticationPageRoute = "/auth";


class MenuItem{
  final String name;
  final String route;
  MenuItem({this.name='',this.route=''});

}

List<MenuItem> sideMenuItems = [
  MenuItem(name: overViewDisplayName,route: overViewPageRoute),
  MenuItem(name: driversDisplayName,route: driversPageRoute),
  MenuItem(name: clientsDisplayName,route: clientsPageRoute),
  MenuItem(name: authenticationDisplayName,route: authenticationPageRoute),
];

