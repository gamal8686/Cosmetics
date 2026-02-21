
import 'package:flutter/cupertino.dart';

import '../../../../core/components/app_image.dart';

class CardProfile {
  final Widget label;
  final String labels;

  CardProfile(this.label, this.labels);
}

final list = [
  CardProfile(AppImage(path: 'edit_info.svg'), 'Edit Info'),
  CardProfile(AppImage(path: 'order_history.svg'), 'Order History'),
  CardProfile(AppImage(path: 'wallet.svg'), 'Wallet'),
  CardProfile(AppImage(path: 'setting.svg'), 'Settings'),
  CardProfile(AppImage(path: 'discount.svg'), 'Voucher'),
];
