package by.it.group151004.afanasenko.lesson06;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Scanner;

public class A_LIS {
	public int getSeqSize(InputStream stream) throws FileNotFoundException {
		try (Scanner scanner = new Scanner(stream)) {
			int n = scanner.nextInt();
			int[] m = new int[n];
			for (int i = 0; i < n; i++) {
				m[i] = scanner.nextInt();
			}
			int[] length = new int[n];
			Arrays.fill(length, 1);
			for (int j = 1; j < n; j++) {
				for (int k = 0; k < j; k++) {
					if (m[j] > m[k] && length[j] <= length[k]) {
						length[j] = length[k] + 1;
					}
				}
			}
			int result = 0;
			for (int l : length) {
				if (l > result) {
					result = l;
				}
			}
			return result;
		}
	}

	public static void main(String[] args) throws FileNotFoundException {
		String root = System.getProperty("user.dir") + "/src/";
		InputStream stream = new FileInputStream(root + "by/it/group151004/afanasenko/lesson06/dataA.txt");
		A_LIS instance = new A_LIS();
		int result = instance.getSeqSize(stream);
		System.out.print(result);
	}
}