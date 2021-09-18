package com.ac.feereport;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class FeeReport extends JFrame {
	static FeeReport frame;
	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frame = new FeeReport();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public FeeReport() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(153, 204, 255));
		contentPane.setForeground(Color.DARK_GRAY);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);

		JButton btnAdminLogin = new JButton("Admin Login");
		btnAdminLogin.setForeground(new Color(255, 255, 255));
		btnAdminLogin.setBackground(new Color(102, 102, 255));
		btnAdminLogin.setBounds(153, 114, 125, 32);
		btnAdminLogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				AdminLogin.main(new String[] {});
				frame.dispose();
			}
		});

		JButton btnAccountantLogin = new JButton("Accountant Login");
		btnAccountantLogin.setForeground(new Color(255, 255, 255));
		btnAccountantLogin.setBackground(new Color(102, 102, 255));
		btnAccountantLogin.setBounds(153, 174, 125, 31);
		btnAccountantLogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				AccountantLogin.main(new String[] {});
				frame.dispose();
			}
		});
		contentPane.setLayout(null);

		JPanel panel = new JPanel();
		panel.setBackground(new Color(102, 102, 255));
		panel.setBounds(0, 0, 436, 75);
		contentPane.add(panel);
		panel.setLayout(null);

		JLabel lblFeeReport = new JLabel("Student Management System");
		lblFeeReport.setForeground(new Color(255, 255, 255));
		lblFeeReport.setBounds(69, 26, 317, 26);
		panel.add(lblFeeReport);
		lblFeeReport.setFont(new Font("Tahoma", Font.BOLD, 21));
		contentPane.add(btnAccountantLogin);
		contentPane.add(btnAdminLogin);
	}
}
