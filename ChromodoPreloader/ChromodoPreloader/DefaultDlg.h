/////////////////////////////////////////////////////////////////////////////
// Default Dialog (primary message handler) Header - DefaultDlg.h
/////////////////////////////////////////////////////////////////////////////
// This file is part of Chromodo Preloader
//
// Chromodo Preloader is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published
// by the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
// 
// Chromodo Preloader is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with Chromodo Preloader; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_DEFAULTDLG_H__96274145_3476_44FC_8D75_F5E77DCA3869__INCLUDED_)
#define AFX_DEFAULTDLG_H__96274145_3476_44FC_8D75_F5E77DCA3869__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define AM_TRAYNOTIFY (WM_USER+1)		// Tray notification
/////////////////////////////////////////////////////////////////////////////
// CDefaultDlg dialog

class CDefaultDlg : public CDialog {
// Construction
public:
	CDefaultDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDefaultDlg)
	enum { IDD = IDD_DEFAULT };
	//}}AFX_DATA

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDefaultDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;
	HICON m_hIcon_Off;
	HICON m_hIcon4bit;
	HICON m_hIcon4bit_Off;

	// Generated message map functions
	//{{AFX_MSG(CDefaultDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnWindowPosChanging(WINDOWPOS FAR* lpwndpos);
	afx_msg void OnContextmenuOpenmyhomepage();
	afx_msg void OnContextmenuPreloaderoptions();
	afx_msg void OnContextmenuUnloadChromodopreloader();
	afx_msg void OnContextmenuInternetoptions();
	afx_msg void OnContextmenuAboutChromodopreloader();
	afx_msg void OnContextmenuUnloadChromodo();
	afx_msg void OnContextmenuReloadChromodo();
	afx_msg void OnClose();
	virtual void OnOK();
	virtual void OnCancel();
	afx_msg void OnDestroy();
	afx_msg void OnTimer(UINT nIDEvent);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

public:
// Specialized internal helper functions
	BOOL IsChromodoRunning();						// Determins if an instance of Chromodo is already running
	BOOL PreloadFF();								// Pre-loads a hidden instance of Chromodo into memory
	BOOL UnloadFF();								// Unloads the instance of Chromodo started by the Preloader
	BOOL ShowTrayIcon(BOOL bShow = TRUE);			// Shows and hides the tray icon
	BOOL ChangeTrayIconState(BOOL bEnabled = TRUE);	// Changes the tray icon to the enabled or disabled state
	int ShowPreloaderOptionsDlg();					// Shows the Preloader Options dialog

// Helper objects
	CRegistry p_cReg;								// Registry access

// Internal program status
	BOOL p_bTimer;									// Is the timer running
	CString p_szProfilePath;						// The path to the current Chromodo profile
	BOOL p_bUserLock;								// We will also use the lock file to determine if Chromodo is running

// Presistant program settings
	UINT p_nTimerInt;								// Interval to poll for Chromodo
	BOOL p_bAutoFindFF;								// Automaticly discover the Chromodo path
	BOOL p_bWarnOnUnloads;							// Warns the user about any action that will unload Chromodo
	CString p_szChromodoPath;						// The path to the Chromodo directory

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DEFAULTDLG_H__96274145_3476_44FC_8D75_F5E77DCA3869__INCLUDED_)
