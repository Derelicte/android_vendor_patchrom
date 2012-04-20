.class public Lcom/android/fileexplorer/ServerControlActivity;
.super Landroid/app/Fragment;
.source "ServerControlActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;


# instance fields
.field public handler:Landroid/os/Handler;

.field private instructionText:Landroid/widget/TextView;

.field private instructionTextPre:Landroid/widget/TextView;

.field private ipText:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mRootView:Landroid/view/View;

.field protected myLog:Lorg/swiftp/MyLog;

.field private startStopButton:Landroid/view/View;

.field startStopListener:Landroid/view/View$OnClickListener;

.field wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    .line 44
    new-instance v0, Lcom/android/fileexplorer/ServerControlActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/ServerControlActivity$1;-><init>(Lcom/android/fileexplorer/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/android/fileexplorer/ServerControlActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/ServerControlActivity$2;-><init>(Lcom/android/fileexplorer/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopListener:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/android/fileexplorer/ServerControlActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/ServerControlActivity$3;-><init>(Lcom/android/fileexplorer/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/ServerControlActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/ServerControlActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/fileexplorer/ServerControlActivity;->warnIfNoExternalStorage()V

    return-void
.end method

.method private setText(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method private warnIfNoExternalStorage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, storageState:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning due to storage state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060049

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 242
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 243
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 245
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBack()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    .line 75
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    .line 78
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, myContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null context!?!?!?"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    invoke-static {v0}, Lorg/swiftp/Globals;->setContext(Landroid/content/Context;)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopButton:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 94
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lorg/swiftp/UiUpdater;->registerClient(Landroid/os/Handler;)V

    .line 95
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->unregisterClient(Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->unregisterClient(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "Unregistered for wifi updates"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 116
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lorg/swiftp/UiUpdater;->registerClient(Landroid/os/Handler;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 119
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x3

    const-string v3, "Registered for wifi updates"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/fileexplorer/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 109
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->registerClient(Landroid/os/Handler;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 139
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->unregisterClient(Landroid/os/Handler;)V

    .line 140
    return-void
.end method

.method public updateUi()V
    .locals 10

    .prologue
    const v9, 0x7f060027

    const/16 v3, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Updating UI"

    invoke-virtual {v0, v7, v1, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 156
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 157
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 158
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isWifiEnabled()Z

    move-result v4

    .line 162
    const v1, 0x7f09004a

    if-eqz v4, :cond_3

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/ServerControlActivity;->setText(ILjava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    if-eqz v4, :cond_4

    const v1, 0x7f02006c

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isRunning()Z

    move-result v5

    .line 167
    if-eqz v5, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "updateUi: server is running"

    invoke-virtual {v0, v7, v1, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 171
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getPort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v6, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ftp://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getPort()I

    move-result v7

    const/16 v8, 0x15

    if-ne v7, v8, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    if-eqz v4, :cond_9

    .line 188
    if-eqz v5, :cond_6

    const v1, 0x7f060048

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    if-eqz v5, :cond_7

    const v1, 0x7f020028

    :goto_5
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 191
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f05000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    :goto_7
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    move v0, v2

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    return-void

    .line 159
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/fileexplorer/ServerControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 164
    :cond_4
    const v1, 0x7f02006b

    goto/16 :goto_2

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/android/fileexplorer/FTPServerService;

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 181
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 188
    :cond_6
    const v1, 0x7f060047

    goto :goto_4

    .line 189
    :cond_7
    const v1, 0x7f020027

    goto :goto_5

    .line 191
    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f050009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_6

    .line 194
    :cond_9
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 196
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/fileexplorer/FTPServerService;

    invoke-direct {v4, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {v1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 200
    :cond_a
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 201
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 202
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 205
    :cond_b
    const/4 v0, 0x4

    goto :goto_8

    :cond_c
    move v0, v3

    .line 206
    goto :goto_9

    :cond_d
    move v3, v2

    .line 207
    goto :goto_a
.end method
