import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solar_system_umpontoseis/app/shared/utils/colors.dart';

class AccordionItem extends StatefulWidget {
  AccordionItem({
    Key key,
    @required this.content,
    @required this.title,
    this.noBorder: false,
  })  : assert(content != null && content.length > 0),
        assert(title != null && title.length > 0),
        super(key: key);

  final bool noBorder;
  final String content;
  final String title;

  @override
  _AccordionItemState createState() => _AccordionItemState();
}

class _AccordionItemState extends State<AccordionItem>
    with SingleTickerProviderStateMixin {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: widget.noBorder
            ? null
            : Border(
                bottom: BorderSide(
                  color: AppColors.brand.withOpacity(0.1),
                ),
              ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: _toggleExpanded,
            behavior: HitTestBehavior.opaque,
            child: Row(
              children: <Widget>[
                RotatedBox(
                  quarterTurns: _expanded ? 2 : 0,
                  child: SvgPicture.asset(
                    'assets/icons/down.svg',
                    color: AppColors.brand,
                    width: 16,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  widget.title,
                  style: _textTheme.button.copyWith(
                    color: AppColors.brand,
                  ),
                ),
              ],
            ),
          ),
          if (_expanded) ...[
            SizedBox(height: 20),
            Text(
              widget.content,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: AppColors.brand.withOpacity(.75),
                  ),
            ),
          ],
        ],
      ),
    );
  }

  void _toggleExpanded() {
    setState(() => _expanded = !_expanded);
  }
}
