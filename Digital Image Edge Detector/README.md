# Digital Image Edge Detector using Verilog HDL

## Overview

This project implements a Digital Image Edge Detector using Verilog HDL. The design applies the Sobel edge detection algorithm to a 3×3 grayscale pixel window. It calculates horizontal and vertical gradients, computes the edge magnitude, and determines whether an edge is present based on a threshold.

---

## Features

- Sobel edge detection
- 3×3 grayscale pixel processing
- Horizontal (Gx) and Vertical (Gy) gradient calculation
- Edge magnitude computation
- Threshold-based edge detection
- Functional verification using simulation

---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| reset | System Reset |
| p1–p9 | 3×3 pixel values (8-bit grayscale) |

---

## Outputs

| Signal | Description |
|---------|-------------|
| edge | Edge Detection Output |
| magnitude | Edge Magnitude |

---

## Sobel Masks

Horizontal (Gx)

-1  0  +1

-2  0  +2

-1  0  +1

Vertical (Gy)

-1 -2 -1

 0  0  0

+1 +2 +1

---

## Working

1. Read a 3×3 pixel window.
2. Calculate Gx and Gy.
3. Compute |Gx| + |Gy|.
4. Compare with a threshold.
5. Output edge = 1 if threshold is exceeded.

---

## Tools Used

- Verilog HDL
- ModelSim
- Vivado
- GTKWave

---

## Applications

- Image Processing
- Computer Vision
- Medical Imaging
- Object Detection
- Autonomous Vehicles