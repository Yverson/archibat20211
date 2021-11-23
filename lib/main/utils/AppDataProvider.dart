
import 'package:archibat2021/customPaint/clock/ClockCustomPaintScreen.dart';
import 'package:archibat2021/main/model/AppModel.dart';
import 'package:archibat2021/main/utils/AppConstant.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMAnimatedBuilderScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMAnimatedContainerScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMAnimatedCrossFadeScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMAnimatedOpacityScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMAnimatedPositionedScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMAnimatedSizeScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMFadeTransitionScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMHeroScreen.dart';
import 'package:archibat2021/widgets/animationAndMotionWidgets/AMScaleTransitionScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWActionSheetScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWActivityIndicatorScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWAlertDialogScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWButtonScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWContextMenuScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWDialogScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWNavigationBarScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWPickerScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWSegmentedControlScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWSliderScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWSlidingSegmentedControlScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWSwitchScreen.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWTabBarWidgets/CWTabBarScreen1.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWTabBarWidgets/CWTabBarScreen2.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWTabBarWidgets/CWTabBarScreen3.dart';
import 'package:archibat2021/widgets/cupertinoWidgets/CWTextFieldScreen.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/IMGestureDetectorScreen.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/imDismissibleWidgets/IMDismissibleScreen1.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/imDismissibleWidgets/IMDismissibleScreen2.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/imDraggableWidgets/IMDraggableScreen1.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/imDraggableWidgets/IMDraggableScreen2.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/imLongPressDraggableWidgets/IMLongPressDraggableScreen1.dart';
import 'package:archibat2021/widgets/interactionModelWidgets/imLongPressDraggableWidgets/IMLongPressDraggableScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWAppBarScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWDrawerWidgets/MWDrawerScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWSliverAppBarWidgets/MWSliverAppBarScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWSliverAppBarWidgets/MWSliverAppBarScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen3.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/MWTabBarWidgets/MWTabBarScreen4.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwAppStrucutreWidgets/mwBottomNavigationWidgets/MWBottomNavigationScreen3.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWDropDownButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWFlatButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWFloatingActionButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWIconButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWMaterialButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWOutlineButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWPopupMenuButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwButtonWidgets/MWRaisedButtonScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWAlertDialogScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWBottomSheetScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPanelScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWSimpleDialogScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWSnackBarScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWToastScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWCardScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWChipScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWDataTableScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWGridViewScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWIconScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWImageScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen3.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen4.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWListViewWidget/MWListViewScreen5.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWProgressBarScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWRichTextScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInformationDisplayWidgets/MWTooltipScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWCheckboxScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWDatetimePickerScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWRadioScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWSliderScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWSwitchScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWTextFieldWidgets/MWTextFieldScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWTextFieldWidgets/MWTextFieldScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwInputSelectionWidgets/MWTextFormFieldScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWDividerScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWListTileScreen.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen3.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWStepperWidget/MWStepperScreen4.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen1.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen2.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen3.dart';
import 'package:archibat2021/widgets/materialWidgets/mwLayoutWidgtes/MWUserAccountDrawerHeaderWidget/MWUserAccountDrawerHeaderScreen4.dart';
import 'package:archibat2021/widgets/otherWidgets/InteractiveViewerScreen.dart';
import 'package:archibat2021/widgets/otherWidgets/OpenContainerTransformScreen.dart';
import 'package:archibat2021/widgets/paintingAndEffectWidgets/PEBackdropFilterScreen.dart';
import 'package:archibat2021/widgets/paintingAndEffectWidgets/PEClipOvalScreen.dart';
import 'package:archibat2021/widgets/paintingAndEffectWidgets/PEOpacityScreen.dart';
import 'package:archibat2021/widgets/paintingAndEffectWidgets/PERotatedBoxScreen.dart';
import 'package:archibat2021/widgets/paintingAndEffectWidgets/PETransformScreen.dart';

Future<AppTheme> getAllAppsAndThemes() async {
  AppTheme appTheme = AppTheme();

  //appTheme.themes = getThemes();
  appTheme.screenList = getScreenList();
  //appTheme.dashboard = getDashboards();
  appTheme.fullApp = getFullApps();
  appTheme.widgets = getWidgets();
  appTheme.defaultTheme = getDefaultTheme();
  //ppTheme.integrations = getIntegrations();
  //appTheme.webApps = getWebApps();

  return appTheme;
}

//region ScreenList
List<ProTheme> getScreenList() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Custom Paint', title_name: 'Custom Paint Screens', type: 'New', show_cover: true, sub_kits: getCustomPaints(), darkThemeSupported: true));

  return list;
}

List<ProTheme> getCustomPaints() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Clock', is_theme: true, type: 'New', widget: ClockCustomPaintScreen(), darkThemeSupported: true));

  return list;
}

//region FullApps
ProTheme getFullApps() {
  ProTheme theme = ProTheme(name: "Full App", type: 'New', show_cover: true, sub_kits: []);
  List<ProTheme> list = [];
  //list.add(ProTheme(name: 'Shop hop', type: '', widget: ShSplashScreen()));

  theme.sub_kits!.addAll(list);
  return theme;
}

//endregion

//region Widgets
ProTheme getWidgets() {
  List<ProTheme> list = [];

  list.add(ProTheme(name: 'Material Widgets', type: '', show_cover: false, sub_kits: getMaterialWidgets(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Widgets', type: '', show_cover: false, sub_kits: getCupertinoWidgets(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Painting and effect Widgets', type: '', show_cover: false, sub_kits: getPaintingAndEffectWidgets(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Animation and motion Widgets', type: '', show_cover: false, sub_kits: getAnimationAndMotionWidgets(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Interaction Model Widgets', type: '', show_cover: false, sub_kits: getInteractionModelWidgets(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Other Widgets', type: '', show_cover: false, sub_kits: getOtherWidgets(), darkThemeSupported: true));

  return ProTheme(name: 'Widgets', title_name: 'Widgets', type: '', show_cover: false, sub_kits: list);
}

//region Material

List<ProTheme> getMaterialWidgets() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'App Structure', show_cover: false, type: '', sub_kits: getAppStructure(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Buttons', show_cover: false, type: '', sub_kits: getButtons(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Input & Selection', show_cover: false, type: '', sub_kits: getInputSelection(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Dialogs, Alerts & Panels', show_cover: false, type: '', sub_kits: getDialogs(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Information Display', show_cover: false, type: '', sub_kits: getInformationDisplay(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Layout', show_cover: false, type: '', sub_kits: getLayout(), darkThemeSupported: true));
  return list;
}

//region subMaterialWidgets
List<ProTheme> getAppStructure() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'AppBar', show_cover: false, type: '', widget: MWAppBarScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Bottom Navigation Bar', show_cover: false, type: '', sub_kits: getBottomNavigationBar(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Drawer', show_cover: false, type: '', sub_kits: getDrawer(), darkThemeSupported: true));
  list.add(ProTheme(name: 'SliverAppBar', show_cover: false, type: '', sub_kits: getSliverAppBar(), darkThemeSupported: true));
  list.add(ProTheme(name: 'TabBar', show_cover: false, type: '', sub_kits: getTabBar(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getBottomNavigationBar() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'With Icon and Label', show_cover: false, type: '', widget: MWBottomNavigationScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'With Custom Image', show_cover: false, type: '', widget: MWBottomNavigationScreen2(), darkThemeSupported: true));
  list.add(ProTheme(name: 'With Shifting Label', show_cover: false, type: '', widget: MWBottomNavigationScreen3(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getDrawer() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'With Multiple Account Selection ', show_cover: false, type: '', widget: MWDrawerScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'With Custom Shape ', show_cover: false, type: '', widget: MWDrawerScreen2(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getSliverAppBar() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Sliver AppBar with ListView', show_cover: false, type: '', widget: MWSliverAppBarScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Parallax Sliver AppBar', show_cover: false, type: '', widget: MWSliverAppBarScreen2(), darkThemeSupported: true));

  return list;
}

List<ProTheme> getTabBar() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Simple TabBar', show_cover: false, type: '', widget: MWTabBarScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'TabBar with Title and Icon', show_cover: false, type: '', widget: MWTabBarScreen2(), darkThemeSupported: true));
  list.add(ProTheme(name: 'TabBar with Icon', show_cover: false, type: '', widget: MWTabBarScreen3(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Scrollable Tab', show_cover: false, type: '', widget: MWTabBarScreen4(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getButtons() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'DropDownButton', show_cover: false, type: '', widget: MWDropDownButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'MaterialButton', show_cover: false, type: '', widget: MWMaterialButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'FlatButton', show_cover: false, type: '', widget: MWFlatButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'FloatingActionButton', show_cover: false, type: '', widget: MWFloatingActionButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'IconButton', show_cover: false, type: '', widget: MWIconButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'OutlineButton', show_cover: false, type: '', widget: MWOutlineButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'PopupMenuButton', show_cover: false, type: '', widget: MWPopupMenuButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'RaisedButton', show_cover: false, type: '', widget: MWRaisedButtonScreen(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getInputSelection() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Checkbox', show_cover: false, type: '', widget: MWCheckboxScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Datetime Picker', show_cover: false, type: '', widget: MWDatetimePickerScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Radio', show_cover: false, type: '', widget: MWRadioScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Slider', show_cover: false, type: '', widget: MWSliderScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Switch', show_cover: false, type: '', widget: MWSwitchScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'TextField', show_cover: false, type: '', sub_kits: getTextField(), darkThemeSupported: true));
  list.add(ProTheme(name: 'TextFormField', show_cover: false, type: '', widget: MWTextFormFieldScreen(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getTextField() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Simple TextField ', show_cover: false, type: '', widget: MWTextFieldScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Rounded Border TextField ', show_cover: false, type: '', widget: MWTextFieldScreen2(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getDialogs() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'AlertDialog', show_cover: false, type: '', widget: MWAlertDialogScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'BottomSheet', show_cover: false, type: '', widget: MWBottomSheetScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'ExpansionPanel', show_cover: false, type: '', widget: MWExpansionPanelScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Simple Dialog', show_cover: false, type: '', widget: MWSimpleDialogScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'SnackBar', show_cover: false, type: '', widget: MWSnackBarScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Toast', show_cover: false, type: '', widget: MWToastScreen(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getInformationDisplay() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Card', show_cover: false, type: '', widget: MWCardScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Chip', show_cover: false, type: '', widget: MWChipScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Progress Bar', show_cover: false, type: '', widget: MWProgressBarScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Data Table', show_cover: false, type: '', widget: MWDataTableScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Grid View', show_cover: false, type: '', widget: MWGridViewScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'List View', show_cover: false, type: '', sub_kits: getListView(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Rich Text', show_cover: false, type: '', widget: MWRichTextScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Icon', show_cover: false, type: '', widget: MWIconScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Image (assets,Network,Placeholders)', show_cover: false, type: '', widget: MWImageScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Tooltip', show_cover: false, type: '', widget: MWTooltipScreen(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getListView() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Simple List View', show_cover: false, type: '', widget: MWListViewScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'List Wheel ScrollView', show_cover: false, type: '', widget: MWListViewScreen2(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Horizontal List View', show_cover: false, type: '', widget: MWListViewScreen3(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Bouncing Scroll List View', show_cover: false, type: '', widget: MWListViewScreen4(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Reorderable List View', show_cover: false, type: '', widget: MWListViewScreen5(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getLayout() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Divider', show_cover: false, type: '', widget: MWDividerScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'ListTile', show_cover: false, type: '', widget: MWListTileScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Stepper', show_cover: false, type: '', sub_kits: getStepper(), darkThemeSupported: true));
  list.add(ProTheme(name: 'User Accounts Drawer Header', show_cover: false, type: '', sub_kits: getUserAccountsDrawerHeader(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getStepper() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Horizontal Stepper with Form', show_cover: false, type: '', widget: MWStepperScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Vertical Stepper', show_cover: false, type: '', widget: MWStepperScreen2(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Vertical Stepper with Form', show_cover: false, type: '', widget: MWStepperScreen3(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Simple Horizontal Stepper', show_cover: false, type: '', widget: MWStepperScreen4(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getUserAccountsDrawerHeader() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'With Custom UI', show_cover: false, type: '', widget: MWUserAccountDrawerHeaderScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Simple User Account Drawer Header', show_cover: false, type: '', widget: MWUserAccountDrawerHeaderScreen2(), darkThemeSupported: true));
  list.add(ProTheme(name: 'With Multiple Account Selection', show_cover: false, type: '', widget: MWUserAccountDrawerHeaderScreen3(), darkThemeSupported: true));
  list.add(ProTheme(name: 'With Custom Background', show_cover: false, type: '', widget: MWUserAccountDrawerHeaderScreen4(), darkThemeSupported: true));
  return list;
}
//endregion

//endregion
//region Cupertino
List<ProTheme> getCupertinoWidgets() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Cupertino Action Sheet', show_cover: false, type: '', widget: CWActionSheetScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Activity Indicator', show_cover: false, type: '', widget: CWActivityIndicatorScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Alert Dialog', show_cover: false, type: '', widget: CWAlertDialogScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Button', show_cover: false, type: '', widget: CWButtonScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Context Menu', show_cover: false, type: '', widget: CWContextMenuScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Dialog', show_cover: false, type: '', widget: CWDialogScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Navigation Bar', show_cover: false, type: '', widget: CWNavigationBarScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Picker', show_cover: false, type: '', widget: CWPickerScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Segmented Control', show_cover: false, type: '', widget: CWSegmentedControlScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Slider', show_cover: false, type: '', widget: CWSliderScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Sliding Segmented Control', show_cover: false, type: '', widget: CWSlidingSegmentedControlScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino Switch', show_cover: false, type: '', widget: CWSwitchScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino TabBar', show_cover: false, type: '', sub_kits: getCupertinoTabBar(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Cupertino TextField', show_cover: false, type: '', widget: CWTextFieldScreen(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getCupertinoTabBar() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Tab Bar with Icon ', show_cover: false, type: '', widget: CWTabBarScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Tab Bar with Icon and Label ', show_cover: false, type: '', widget: CWTabBarScreen2(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Tab Bar with Custom Image ', show_cover: false, type: '', widget: CWTabBarScreen3(), darkThemeSupported: true));
  return list;
}

//endregion
//region PaintingAndEffectWidgets
List<ProTheme> getPaintingAndEffectWidgets() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Backdrop Filter', show_cover: false, type: '', widget: PEBackdropFilterScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Clip Widget Demo', show_cover: false, type: '', widget: PEClipOvalScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Opacity', show_cover: false, type: '', widget: PEOpacityScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Rotated Box', show_cover: false, type: '', widget: PERotatedBoxScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Transform', show_cover: false, type: '', widget: PETransformScreen(), darkThemeSupported: true));
  return list;
}

//endregion
//region AnimationAndMotionWidgets
List<ProTheme> getAnimationAndMotionWidgets() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Animated Builder', show_cover: false, type: '', widget: AMAnimatedBuilderScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Animated Container', show_cover: false, type: '', widget: AMAnimatedContainerScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Animated Cross Fade', show_cover: false, type: '', widget: AMAnimatedCrossFadeScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Animated Opacity', show_cover: false, type: '', widget: AMAnimatedOpacityScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Fade Transition', show_cover: false, type: '', widget: AMFadeTransitionScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Hero Transition', show_cover: false, type: '', widget: AMHeroScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Scale Transition', show_cover: false, type: '', widget: AMScaleTransitionScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Animated Size', show_cover: false, type: '', widget: AMAnimatedSizeScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Animated Positioned', show_cover: false, type: '', widget: AMAnimatedPositionedScreen(), darkThemeSupported: true));
  return list;
}

//endregion
//region interaction
List<ProTheme> getInteractionModelWidgets() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Dismissible', show_cover: false, type: '', sub_kits: getDismissible(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Gesture Detector', show_cover: false, type: '', widget: IMGestureDetectorScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Draggable', show_cover: false, type: '', sub_kits: getDraggable(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Long Press Draggable', show_cover: false, type: '', sub_kits: getLongPressDraggable(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getDismissible() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Dismissible with Both Side ', show_cover: false, type: '', widget: IMDismissibleScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Dismissible with One Side', show_cover: false, type: '', widget: IMDismissibleScreen2(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getDraggable() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Simple Draggable', show_cover: false, type: '', widget: IMDraggableScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Draggable with Target', show_cover: false, type: '', widget: IMDraggableScreen2(), darkThemeSupported: true));
  return list;
}

List<ProTheme> getLongPressDraggable() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Simple Long Press Draggable ', show_cover: false, type: '', widget: IMLongPressDraggableScreen1(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Long Press Draggable with Target', show_cover: false, type: '', widget: IMLongPressDraggableScreen2(), darkThemeSupported: true));
  return list;
}

//endregion

//region Other Widgets
List<ProTheme> getOtherWidgets() {
  List<ProTheme> list = [];
  list.add(ProTheme(name: 'Interactive Viewer', show_cover: false, type: '', widget: InteractiveViewerScreen(), darkThemeSupported: true));
  list.add(ProTheme(name: 'Open Container Transform Demo', show_cover: false, type: '', widget: OpenContainerTransformScreen(), darkThemeSupported: true));
  return list;
}
//endregion

//endregion

//region Default Theme
ProTheme getDefaultTheme() {
  return ProTheme(name: "Default Theme", title_name: 'Default Theme', type: '', show_cover: false, darkThemeSupported: true);
}
//endregion

//region Flutter Web
