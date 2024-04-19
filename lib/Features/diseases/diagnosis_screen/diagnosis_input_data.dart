import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/utils/medi_assets.dart';

class DiagnosisInputData {
  static inputDescription({required String key}) {
    Get.bottomSheet(Container(
      height: 200,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(MediAssets.predictionInput),
          Expanded(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  inputData[key]!,
                  speed: const Duration(milliseconds: 150),
                  textStyle: const TextStyle(color: Colors.white),
                )
              ],
              isRepeatingAnimation: false,
              displayFullTextOnTap: true,
              stopPauseOnTap: false,
              repeatForever: false,
            ),
          )
        ],
      ),
    ));
  }

  static const Map<String, String> inputData = {
    //Diabetes
    "Pregnancies": "Number of pregnancies the individual has had.",
    "Glucose":
        "Blood sugar level, specifically the concentration of glucose in the blood.",
    "BloodPressure":
        "Measure of the force of blood against the walls of the arteries, expressed as systolic pressure over diastolic pressure.",
    "SkinThickness":
        "Measurement of skinfold thickness at specific sites on the body, often used as a measure of body composition.",
    "Insulin":
        "Hormone produced by the pancreas that helps regulate blood sugar levels by facilitating the uptake of glucose into cells.",
    "BMI":
        "Body Mass Index (BMI) is a measure of body fat based on height and weight.",
    "DiabetesPedigreeFunction":
        "A function that scores the likelihood of diabetes based on family history.",
    "Age": "Age of the individual, a significant factor in diabetes risk.",

    //parjinson
    "MDVP_fo_HZ":
        "Mean frequency (in Hertz) of the fundamental frequency measured from the acoustic signal.",
    "MDVP_Fhi_HZ": "Highest frequency (in Hertz) in the acoustic signal.",
    "MDVP_Flo_HZ": "Lowest frequency (in Hertz) in the acoustic signal.",
    "MDVP_Jitter_percentage":
        "Percentage of jitter in the fundamental frequency, a measure of variation in pitch.",
    "MDVP_Jitter_Abs":
        "Absolute jitter in the fundamental frequency, measured in microseconds.",
    "MDVP_RAP":
        "Relative amplitude perturbation, a measure of variation in pitch, calculated using the average absolute difference between successive periods.",
    "MDVP_PPQ":
        "Five-point period perturbation quotient, another measure of variation in pitch.",
    "Jitter_DDP":
        "Jitter DDP (degree of DD), a measure of variation in pitch calculated as three times the difference between the average absolute differences of successive periods.",
    "MDVP_Shimmer":
        "Shimmer (local amplitude variation) in the acoustic signal.",
    "MDVP_Shimmer_dB":
        "Shimmer measured in decibels, providing a dB representation of amplitude variation.",
    "Shimmer_APQ3":
        "Amplitude variation measured in dB within consecutive segments of the acoustic signal.",
    "Shimmer_APQ5":
        "Similar to Shimmer_APQ3, but using a different segmentation.",
    "MDVP_APQ":
        "Absolute shimmer (APQ) is a measure of amplitude variation calculated as the average of the absolute differences between amplitudes of consecutive periods.",
    "Shimmer_DDA":
        "Shimmer measured in terms of the difference between the maxima and minima in the acoustic signal, providing another representation of amplitude variation.",
    "NHR":
        "Noise-to-harmonics ratio, which measures the ratio of noise to harmonics in the acoustic signal.",
    "HNR":
        "Harmonics-to-noise ratio, which measures the ratio of harmonics to noise in the acoustic signal.",
    "RPDE":
        "Recurrence period density entropy, a measure of voice quality based on recurrence rate.",
    "DFA":
        "Detrended fluctuation analysis, a measure of the fractal scaling properties of the acoustic signal.",
    "spread1":
        "Another measure related to the distribution of points around a central value in the acoustic signal.",
    "spread2":
        "Similar to spread1, representing a different aspect of point distribution.",
    "D2":
        "Correlation dimension, a measure of the complexity of the acoustic signal.",
    "PPE":
        "Pitch period entropy, a measure of voice quality based on pitch period variability.",

    // breast cancer
    "clump_thickness":
        "Thickness of cell clusters (clumps) in the breast tissue, assessed on a scale from 1 to 10.",
    "uniform_cell_size":
        "Consistency of cell size within the cell clusters, assessed on a scale from 1 to 10.",
    "uniform_cell_shape":
        "Consistency of cell shape within the cell clusters, assessed on a scale from 1 to 10.",
    "marginal_adhesion":
        "How well the tumor cells stick together or adhere to surrounding normal cells, assessed on a scale from 1 to 10.",
    "single_epithelial_size":
        "Size of individual epithelial cells, assessed on a scale from 1 to 10.",
    "bare_nuclei":
        "Presence of bare nuclei in the cell clusters, often assessed as either present or absent.",
    "bland_chromatin":
        "Uniformity and smoothness of the chromatin material within the cell nucleus, assessed on a scale from 1 to 10.",
    "normal_nucleoli":
        "Size and number of normal nucleoli present within the cell clusters.",
    "mitoses": "Number of cells undergoing mitosis within the cell clusters.",

    //heart
    "Sex": "Gender of the individual. 0 for female, 1 for male.",
    "Cp":
        "Type of chest pain experienced by the individual. Values: 0 - Typical angina, 1 - Atypical angina, 2 - Non-anginal pain, 3 - Asymptomatic.",
    "Trestbps":
        "Resting blood pressure measured in mmHg (millimeters of mercury).",
    "Chol":
        "Serum cholesterol level measured in mg/dl (milligrams per deciliter).",
    "Fbs":
        "Fasting blood sugar level measured in mg/dl. Values greater than 120 mg/dl may indicate diabetes.",
    "Restecg":
        "Results of the resting electrocardiogram. Values: 0 - Normal, 1 - Abnormal ST-T wave, 2 - Probable or definite left ventricular hypertrophy.",
    "Thalach": "Maximum heart rate achieved during exercise stress testing.",
    "Exang":
        "Presence of exercise-induced angina during exercise stress testing. 0 for no, 1 for yes.",
    "Oldpeak":
        "ST segment depression induced by exercise relative to rest, measured in mm (millimeters).",
    "Slope":
        "Slope of the peak exercise ST segment. Values: 0 - Upsloping, 1 - Flat, 2 - Downsloping.",
    "Ca":
        "Number of major vessels colored by flourosopy during coronary angiography.",
    "Thal":
        "Presence of thalassemia. Values: 0 - Normal, 1 - Fixed defect, 2 - Reversible defect."
  };
}
