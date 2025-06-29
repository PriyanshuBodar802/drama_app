import 'package:drama_app/utils/cons.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        title: Text("World News",style: TextStyle(color: textcolor,fontSize: 20.sp),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.search,color: textcolor,size: 25.sp,)),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications_active,color: textcolor,size: 25.sp,)),
        ],

      ),
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.w,top: 0.h),
              child: Text("Welcome back, Bodar!",style: TextStyle(fontSize: 20.sp,color: textcolor,fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Text(" Discover a world of news that matters to you",style: TextStyle(fontSize: 15.sp,color: subtextcolor,fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding( padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Trending news',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: textcolor,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: subtextcolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  SizedBox(width: 1.w,),
                  _buildNewsCard(
                    context,
                    category: 'Cars',
                    imageUrl: 'https://imgd.aeplcdn.com/1200x900/n/cw/ec/172075/tata-harrier-left-front-three-quarter3.jpeg?isig=0&wm=0',
                    title: 'Tata Harrier Dark Edition: Top highlights',
                    sourceLogoUrl: 'https://1000logos.net/wp-content/uploads/2020/04/Tata-Logo-1988.png',
                    sourceName: 'TATA',
                    date: 'Jun 9, 2023',
                  ),
                  _buildNewsCard(
                    context,
                    category: 'Crime',
                    imageUrl: 'https://th-i.thgim.com/public/incoming/ipkaew/article69747239.ece/alternates/LANDSCAPE_1200/80717_27_6_2025_20_36_43_3_270625SOUTHKOLKATALAWCOLLEGERAPE8.JPG', // Replace with your image
                    title: ' dical exam confirms ‘forceful penetration, assault marks on neck’',
                    sourceLogoUrl: 'https://banner2.cleanpng.com/20180328/glq/avjrxqetw.webp',
                    sourceName: 'Hindi News',
                    date: 'Jun 10, 2023',
                  ),
                  _buildNewsCard(
                    context,
                    category: 'Crime',
                    imageUrl: 'https://th-i.thgim.com/public/incoming/ipkaew/article69747239.ece/alternates/LANDSCAPE_1200/80717_27_6_2025_20_36_43_3_270625SOUTHKOLKATALAWCOLLEGERAPE8.JPG', // Replace with your image
                    title: ' dical exam confirms ‘forceful penetration, assault marks on neck’',
                    sourceLogoUrl: 'https://banner2.cleanpng.com/20180328/glq/avjrxqetw.webp',
                    sourceName: 'Hindi News',
                    date: 'Jun 10, 2023',
                  ),
                  _buildNewsCard(
                    context,
                    category: 'Crime',
                    imageUrl: 'https://th-i.thgim.com/public/incoming/ipkaew/article69747239.ece/alternates/LANDSCAPE_1200/80717_27_6_2025_20_36_43_3_270625SOUTHKOLKATALAWCOLLEGERAPE8.JPG', // Replace with your image
                    title: ' dical exam confirms ‘forceful penetration, assault marks on neck’',
                    sourceLogoUrl: 'https://banner2.cleanpng.com/20180328/glq/avjrxqetw.webp',
                    sourceName: 'Hindi News',
                    date: 'Jun 10, 2023',
                  ),
                  _buildNewsCard(
                    context,
                    category: 'Crime',
                    imageUrl: 'https://th-i.thgim.com/public/incoming/ipkaew/article69747239.ece/alternates/LANDSCAPE_1200/80717_27_6_2025_20_36_43_3_270625SOUTHKOLKATALAWCOLLEGERAPE8.JPG', // Replace with your image
                    title: ' dical exam confirms ‘forceful penetration, assault marks on neck’',
                    sourceLogoUrl: 'https://banner2.cleanpng.com/20180328/glq/avjrxqetw.webp',
                    sourceName: 'Hindi News',
                    date: 'Jun 10, 2023',
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w,top: 0.h),
              child: Text("Recommendation",style: TextStyle(fontSize: 18.sp,color: textcolor,fontWeight: FontWeight.w500)),
            ),
            _buildNewsreCard(
              context,
              category: 'Cars',
              imageUrl: 'https://imgd.aeplcdn.com/1200x900/n/cw/ec/172075/tata-harrier-left-front-three-quarter3.jpeg?isig=0&wm=0',
              title: 'Tata Harrier Dark Edition: Top highlights',
              sourceLogoUrl: 'https://1000logos.net/wp-content/uploads/2020/04/Tata-Logo-1988.png',
              sourceName: 'TATA',
              date: 'Jun 9, 2023',
            ),
            _buildNewsreCard(
              context,
              category: 'Crime',
              imageUrl: 'https://th-i.thgim.com/public/incoming/ipkaew/article69747239.ece/alternates/LANDSCAPE_1200/80717_27_6_2025_20_36_43_3_270625SOUTHKOLKATALAWCOLLEGERAPE8.JPG', // Replace with your image
              title: ' dical exam confirms ‘forceful penetration, assault marks on neck',
              sourceLogoUrl: 'https://banner2.cleanpng.com/20180328/glq/avjrxqetw.webp',
              sourceName: 'Hindi News',
              date: 'Jun 10, 2023',
            ),
            ],
        ),
      ),
    );
  }
}

Widget _buildNewsCard(
    BuildContext context, {
      required String category,
      required String imageUrl,
      required String title,
      required String sourceLogoUrl,
      required String sourceName,
      required String date,
    }) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 80.w,
      decoration: BoxDecoration(
        color:backgroundcolor,
        borderRadius: BorderRadius.circular(15.sp),
          boxShadow: [ BoxShadow(
            color: boxshedo,
            blurRadius: 15,
            blurStyle: BlurStyle.solid
          ),]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.network(
                  imageUrl,
                  height: 22.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 1.h,
                left: 2.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: wtextcolor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: textcolor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 0.2.h),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.sp),
                      child: Image.network(
                        sourceLogoUrl,
                        width: 5.w,
                        height: 5.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      sourceName,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: textcolor,
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Icon(
                      Icons.check_circle,
                      color: maincolor,
                      size: 16.sp,
                    ),
                    const Spacer(),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: subtextcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}



Widget _buildNewsreCard(
    BuildContext context, {
      required String category,
      required String imageUrl,
      required String title,
      required String sourceLogoUrl,
      required String sourceName,
      required String date,
    }) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 94.w,
        decoration: BoxDecoration(
            color:backgroundcolor,
            borderRadius: BorderRadius.circular(15.sp),
            boxShadow: [ BoxShadow(
                color: boxshedo,
                blurRadius: 15,
                blurStyle: BlurStyle.solid
            ),]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.network(
                    imageUrl,
                    height: 22.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 1.h,
                  left: 2.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    decoration: BoxDecoration(
                      color: maincolor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: wtextcolor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: textcolor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 0.2.h),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.sp),
                        child: Image.network(
                          sourceLogoUrl,
                          width: 5.w,
                          height: 5.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        sourceName,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: textcolor,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Icon(
                        Icons.check_circle,
                        color: maincolor,
                        size: 16.sp,
                      ),
                      const Spacer(),
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: subtextcolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}