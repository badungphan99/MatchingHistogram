#include <iostream>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <time.h>

using namespace std;
using namespace cv;

#define input "input.png"
#define target "target.png"

void imhist(Mat image, int histogram[])
{
    for(int i = 0; i < 256; i++)
    {
        histogram[i] = 0;
    }
    for(int y = 0; y < image.rows; y++)
    {
        for(int x = 0; x < image.cols; x++)
        {
            histogram[(int)image.at<uchar>(y,x)]++;
        }
    }
}


void histDisplay(Mat image, const char* name)
{
    int histogram[256];
    imhist(image,histogram);
    int hist[256];
    for(int i = 0; i < 256; i++)
    {
        hist[i]=histogram[i];
    }
    // draw the histograms
    int hist_w = 512; int hist_h = 400;
    int bin_w = cvRound((double) hist_w/256);

    Mat histImage(hist_h, hist_w, CV_8UC1, Scalar(255, 255, 255));

    // find the maximum intensity element from histogram
    int max = hist[0];
    for(int i = 1; i < 256; i++){
        if(max < hist[i]){
            max = hist[i];
        }
    }

    // normalize the histogram between 0 and histImage.rows

    for(int i = 0; i < 256; i++){
        hist[i] = ((double)hist[i]/max)*histImage.rows;
    }

    // draw the intensity line for histogram
    for(int i = 0; i < 256; i++)
    {
        line(histImage, Point(bin_w*(i), hist_h),Point(bin_w*(i), hist_h - hist[i]),Scalar(0,0,0), 1, 8, 0);
    }

    // display histogram
    namedWindow(name, WINDOW_AUTOSIZE);
    imshow(name, histImage);
}
void cdf(Mat image, double cdf[]){
    int histogram[256];
    double sumHistogram[256];
    imhist(image, histogram);
    sumHistogram[0] = histogram[0];
    cdf[0] = sumHistogram[0]/(image.rows*image.cols);
    for(int i=1;i<256;i++){
        sumHistogram[i] = histogram[i]+sumHistogram[i-1];
        cdf[i] = sumHistogram[i]/(image.rows*image.cols);
    }
}

int main(){
    clock_t start, end;
    double duration;
    start = clock();
    Mat imageInput, imageOutput, imageTarget;
    imageInput = imread(input, CV_LOAD_IMAGE_GRAYSCALE);
    imageTarget = imread(target, CV_LOAD_IMAGE_GRAYSCALE);
    imageOutput = imageInput.clone();
    double cdfImInput[256],cdfImTarget[256];
    int lut[256],histogramInput[256];
    for(int i=0;i<256;i++){
        lut[i] = i;
    }

    if (imageInput.empty()&&imageTarget.empty()){
        cout << "Can't open or read image input or image target" << endl;
    }else{
        cdf(imageInput, cdfImInput);
        cdf(imageTarget, cdfImTarget);
        for(int i=1;i<256;i++){
            for(int j=1;j<256;j++){
                if((cdfImInput[i]>cdfImTarget[j-1])&&(cdfImInput[i] <= cdfImTarget[j])){
                    lut[i] = j;
                }
            }

        }
        for(int y = 0; y < imageInput.rows; y++) {
            for (int x = 0; x < imageInput.cols; x++) {
                imageOutput.at<uchar>(y, x) = lut[imageInput.at<uchar>(y, x)];
            }
        }
        end = clock();
        duration = ((double)( end - start )) / CLOCKS_PER_SEC;
        cout << duration << " seconds" << endl;
        imshow("Original Image", imageInput);
        imshow("After",imageOutput);
        imshow("Target image",imageTarget);
        histDisplay(imageInput,"Original Histogram");
        histDisplay(imageOutput, "After Histogram");
        histDisplay(imageTarget, "Target Histogram");
        waitKey(0);
    }
}

