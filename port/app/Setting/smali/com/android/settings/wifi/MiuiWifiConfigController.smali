.class public Lcom/android/settings/wifi/MiuiWifiConfigController;
.super Ljava/lang/Object;
.source "MiuiWifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mActivity:Landroid/app/Activity;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHasIporProxy:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private final mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowAdvance:Z

.field private mSsidView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V
    .locals 14
    .parameter "activity"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "showAdvance"
    .parameter "onSubmitStateChangeListener"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v11, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 97
    sget-object v11, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 98
    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 117
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    .line 118
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    .line 120
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    .line 121
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 122
    if-nez p3, :cond_1

    const/4 v11, 0x0

    :goto_0
    iput v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    .line 124
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 128
    .local v8, resources:Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v11, :cond_2

    .line 129
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f08017a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 130
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f08017b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 132
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 133
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f080153

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    :goto_1
    return-void

    .line 122
    .end local v8           #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0

    .line 135
    .restart local v8       #resources:Landroid/content/res/Resources;
    :cond_2
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f080193

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 136
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f08018c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 138
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f0801a4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 139
    .local v2, accessPointTitle:Landroid/widget/TextView;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f080179

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 143
    .local v4, group:Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 144
    .local v10, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v10, :cond_3

    .line 145
    const v11, 0x7f0b01d1

    invoke-static {p1, v10}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v11, v12}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 148
    :cond_3
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v7

    .line 149
    .local v7, level:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    .line 150
    const v11, 0x7f070019

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, signal:[Ljava/lang/String;
    const v11, 0x7f0b01d0

    aget-object v12, v9, v7

    invoke-direct {p0, v4, v11, v12}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 154
    .end local v9           #signal:[Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 155
    .local v6, info:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 156
    const v11, 0x7f0b01d2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Mbps"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v11, v12}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 159
    :cond_5
    const v11, 0x7f0b01cf

    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v11, v12}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 161
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 162
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_9

    .line 163
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v12, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v11, v12, :cond_6

    .line 164
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 165
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 169
    :goto_2
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v12, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v11, v12, :cond_7

    .line 170
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 171
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 175
    :goto_3
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 177
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 178
    .local v1, a:Ljava/net/InetAddress;
    const v11, 0x7f0b01d3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v11, v12}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 167
    .end local v1           #a:Ljava/net/InetAddress;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 173
    :cond_7
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 181
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 183
    const v11, 0x7f0b01e3

    const v12, 0x7f0b01e4

    invoke-virtual {p1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v11, v12}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 190
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v11, v11, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v11, :cond_a

    .line 191
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showNetworkSetupFields()V

    .line 194
    :cond_a
    iget-boolean v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v11, :cond_0

    .line 195
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f080183

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v12, 0x7f0801a7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showProxyFields()V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showIpConfigFields()V

    .line 201
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 202
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "nameId"
    .parameter "value"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, row:Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 210
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 216
    const/4 v0, 0x0

    .line 219
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 222
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->chosenNetworkSetupMethod()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 225
    :cond_1
    const/4 v0, 0x0

    .line 228
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v1, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;->onSubmitStateChange(Z)V

    .line 234
    :cond_4
    return-void

    .line 219
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 329
    const/4 v7, 0x0

    .line 330
    .local v7, ret:Z
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->clear()V

    .line 331
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_0

    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 335
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v8, v9, :cond_2

    .line 336
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/MiuiWifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 337
    .local v6, result:I
    if-eqz v6, :cond_1

    .line 338
    const/4 v8, 0x0

    .line 371
    .end local v6           #result:I
    :goto_1
    return v8

    .line 331
    :cond_0
    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 340
    .restart local v6       #result:I
    :cond_1
    const/4 v7, 0x1

    .line 343
    .end local v6           #result:I
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_5

    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 347
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_3

    .line 348
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, host:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, portStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 352
    .local v3, port:I
    const/4 v6, 0x0

    .line 354
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 355
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 359
    :goto_3
    if-nez v6, :cond_6

    .line 360
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 362
    const/4 v7, 0x1

    .line 368
    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_3
    :goto_4
    iget-boolean v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_4

    .line 369
    const/4 v7, 0x1

    :cond_4
    move v8, v7

    .line 371
    goto :goto_1

    .line 343
    :cond_5
    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 356
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0b00aa

    goto :goto_3

    .line 364
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 615
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0b01df

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, unspecified:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 619
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v3, v2, v6

    .line 627
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    const v5, 0x1090008

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 629
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 630
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 631
    return-void

    .line 621
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 622
    .local v1, array:[Ljava/lang/String;
    aput-object v3, v1, v6

    .line 623
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    move-object v2, v1

    goto :goto_0
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 635
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 638
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 641
    if-eqz p2, :cond_0

    .line 643
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 644
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 651
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 644
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 11

    .prologue
    const v10, 0x7f080194

    const/4 v9, 0x0

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080192

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    .line 529
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 531
    :cond_0
    if-nez v0, :cond_1

    .line 532
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 535
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 536
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080195

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 538
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080196

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 539
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080197

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 541
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080198

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 542
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080199

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 544
    if-eqz v0, :cond_7

    .line 545
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 546
    .local v5, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 547
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 549
    .local v4, linkAddress:Landroid/net/LinkAddress;
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 555
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 556
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 562
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 563
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 566
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 570
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 571
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 572
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 573
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 578
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    :cond_7
    :goto_0
    return-void

    .line 576
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 5

    .prologue
    const v4, 0x7f080181

    const/4 v3, 0x0

    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 509
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 515
    .local v0, pos:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f08018e

    const v6, 0x7f08018d

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f08018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 590
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f08018f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 593
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f080190

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 594
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f080191

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 596
    if-eqz v0, :cond_1

    .line 597
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 598
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_1

    .line 599
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 606
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 607
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 612
    :goto_0
    return-void

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 7

    .prologue
    const v6, 0x7f080184

    const v2, 0x7f080183

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 457
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-nez v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 465
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 466
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_2

    .line 469
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f0b01de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 473
    :cond_2
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 474
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080185

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 481
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080186

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 482
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080187

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 483
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080188

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 484
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 485
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 487
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 492
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/MiuiWifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 10
    .parameter "linkProperties"

    .prologue
    const v8, 0x7f0b0208

    .line 375
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 378
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 383
    const/4 v7, -0x1

    .line 385
    .local v7, networkPrefixLength:I
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 389
    :goto_0
    if-ltz v7, :cond_0

    const/16 v9, 0x20

    if-le v7, v9, :cond_1

    .line 390
    :cond_0
    const v8, 0x7f0b0209

    .line 420
    .end local v7           #networkPrefixLength:I
    :goto_1
    return v8

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b0206

    goto :goto_1

    .line 392
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_1
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 394
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 397
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 401
    new-instance v9, Landroid/net/RouteInfo;

    invoke-direct {v9, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 403
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 406
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 410
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 411
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 412
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    :try_start_4
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 418
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 420
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 398
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 399
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b0207

    goto :goto_1

    .line 407
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_2
    move-exception v2

    .line 408
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 415
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 416
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 386
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_4
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->enableSubmitIfAppropriate()V

    .line 656
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 661
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 238
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 244
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 248
    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 256
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-nez v3, :cond_3

    .line 257
    iget v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    packed-switch v3, :pswitch_data_0

    .line 317
    const/4 v0, 0x0

    .line 325
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_2
    return-object v0

    .line 241
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 259
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 321
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 322
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 323
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_2

    .line 263
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 264
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 265
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 266
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 268
    .local v1, length:I
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, password:Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    :cond_4
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 272
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v5

    goto :goto_3

    .line 274
    :cond_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_3

    .line 280
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 281
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 284
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 286
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 292
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 293
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 294
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 296
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 301
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 304
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_7
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 307
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 309
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_9
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 296
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 298
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 301
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 304
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 307
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 309
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const v2, 0x7f0801a7

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08017d

    if-ne v0, v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 682
    :cond_0
    :goto_1
    return-void

    .line 671
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 675
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801a6

    if-ne v0, v1, :cond_0

    .line 676
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 687
    iput p3, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    .line 688
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showSecurityFields()V

    .line 696
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->enableSubmitIfAppropriate()V

    .line 697
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showNetworkSetupFields()V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 692
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 694
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 666
    return-void
.end method
