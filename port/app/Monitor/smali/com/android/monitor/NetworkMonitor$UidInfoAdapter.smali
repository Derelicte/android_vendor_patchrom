.class Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidInfoAdapter"
.end annotation


# instance fields
.field private mActiveUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mNonSystemUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 203
    new-instance v0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;-><init>(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 212
    new-instance v0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;-><init>(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    .line 90
    return-void
.end method

.method static synthetic access$900(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setAccessMode(ZZ)V

    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 12
    .parameter "position"
    .parameter "view"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getItem(I)Lcom/android/monitor/net/UidInfo;

    move-result-object v6

    .line 155
    .local v6, u:Lcom/android/monitor/net/UidInfo;
    if-nez v6, :cond_0

    .line 184
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/NetworkMonitor$ListEntry;

    .line 160
    .local v1, entry:Lcom/android/monitor/NetworkMonitor$ListEntry;
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$000(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/monitor/net/UidInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v7, 0x7f070009

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, trafficPanel:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const-wide/16 v3, 0x0

    .line 165
    .local v3, totalBytes:J
    iget-object v7, v6, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    add-long/2addr v3, v7

    .line 166
    iget-object v7, v6, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    add-long/2addr v3, v7

    .line 167
    iget-object v7, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, formatBytes:Ljava/lang/String;
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$200(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    const v9, 0x7f05001a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/monitor/NetworkMonitor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const-wide/16 v3, 0x0

    .line 171
    iget-object v7, v6, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    add-long/2addr v3, v7

    .line 172
    iget-object v7, v6, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    add-long/2addr v3, v7

    .line 173
    iget-object v7, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 174
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$300(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    const v9, 0x7f05001b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/monitor/NetworkMonitor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v7, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/monitor/net/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 177
    .local v0, enabled:Z
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 178
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$500(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 179
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v7

    iget-boolean v8, v6, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$500(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v7

    iget-boolean v8, v6, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$600(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/monitor/net/UidInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$500(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 183
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 224
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 225
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/android/monitor/NetworkMonitor$ListEntry;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;-><init>(Lcom/android/monitor/NetworkMonitor$1;)V

    .line 226
    .local v0, entry:Lcom/android/monitor/NetworkMonitor$ListEntry;
    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text:Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$002(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 227
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$202(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 228
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$302(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 229
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->icon:Landroid/widget/ImageView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$602(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 230
    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$402(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 231
    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$502(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 232
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$500(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    return-object v2
.end method

.method private setAccessMode(ZZ)V
    .locals 4
    .parameter "isMobile"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x2

    .line 187
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCheckedMode(Z)I

    move-result v0

    .line 188
    .local v0, checkMode:I
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/monitor/net/Firewall;->getAccessMode(Landroid/content/Context;Z)I

    move-result v1

    .line 189
    .local v1, mode:I
    if-nez p2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    .line 191
    :cond_1
    const/4 v1, 0x1

    .line 199
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/monitor/net/Firewall;->setAccessMode(Landroid/content/Context;IZ)V

    .line 200
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #calls: Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(Z)V
    invoke-static {v2, p1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;Z)V

    .line 201
    return-void

    .line 193
    :cond_3
    if-eqz p2, :cond_4

    if-ne v0, v3, :cond_4

    .line 194
    const/4 v1, 0x2

    goto :goto_0

    .line 195
    :cond_4
    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 196
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableMode(IZ)V
    .locals 4
    .parameter "mode"
    .parameter "isMobile"

    .prologue
    .line 254
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    .line 255
    .local v0, enable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/net/UidInfo;

    .line 256
    .local v2, u:Lcom/android/monitor/net/UidInfo;
    if-eqz p2, :cond_1

    .line 257
    iput-boolean v0, v2, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    goto :goto_1

    .line 254
    .end local v0           #enable:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #u:Lcom/android/monitor/net/UidInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    .restart local v0       #enable:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #u:Lcom/android/monitor/net/UidInfo;
    :cond_1
    iput-boolean v0, v2, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    goto :goto_1

    .line 262
    .end local v2           #u:Lcom/android/monitor/net/UidInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 263
    return-void
.end method

.method public getCheckedMode(Z)I
    .locals 5
    .parameter "isMobile"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/monitor/net/UidInfo;

    .line 115
    .local v3, u:Lcom/android/monitor/net/UidInfo;
    if-eqz p1, :cond_1

    iget-boolean v1, v3, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    .line 116
    .local v1, enable:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1           #enable:Z
    :cond_1
    iget-boolean v1, v3, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    goto :goto_1

    .line 121
    .end local v3           #u:Lcom/android/monitor/net/UidInfo;
    :cond_2
    if-nez v0, :cond_3

    .line 122
    const/4 v4, 0x0

    .line 126
    :goto_2
    return v4

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 124
    const/4 v4, 0x2

    goto :goto_2

    .line 126
    :cond_4
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/monitor/net/UidInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/monitor/net/UidInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getItem(I)Lcom/android/monitor/net/UidInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 146
    if-nez p2, :cond_0

    .line 147
    invoke-direct {p0, p1, p3}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 149
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->bindView(ILandroid/view/View;)V

    .line 150
    return-object p2
.end method

.method public refresh(Landroid/util/SparseArray;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/UidInfo;>;"
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 94
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 95
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 96
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 97
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/net/UidInfo;

    .line 98
    .local v2, u:Lcom/android/monitor/net/UidInfo;
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-boolean v3, v2, Lcom/android/monitor/net/UidInfo;->mIsSystemApp:Z

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v2           #u:Lcom/android/monitor/net/UidInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setData()V

    .line 104
    return-void
.end method

.method public setData()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mPreferences:Lcom/android/monitor/util/Preferences;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$1200(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/monitor/util/Preferences;->isDisplaySystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$1100(Lcom/android/monitor/NetworkMonitor;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->sort(Ljava/util/Comparator;)V

    .line 251
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    goto :goto_0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/monitor/net/UidInfo;>;"
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #setter for: Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;
    invoke-static {v0, p1}, Lcom/android/monitor/NetworkMonitor;->access$1102(Lcom/android/monitor/NetworkMonitor;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 241
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method
