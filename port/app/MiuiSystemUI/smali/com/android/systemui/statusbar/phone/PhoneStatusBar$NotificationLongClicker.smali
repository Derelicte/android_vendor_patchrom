.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationLongClicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;
    }
.end annotation


# instance fields
.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mLable:Ljava/lang/String;

.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .parameter
    .parameter "entry"

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2235
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2236
    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mPkg:Ljava/lang/String;

    .line 2237
    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method private getLable()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2245
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mLable:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2246
    const/4 v0, 0x0

    .line 2248
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2251
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mPkg:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mLable:Ljava/lang/String;

    .line 2253
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mLable:Ljava/lang/String;

    return-object v1

    .line 2251
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 2249
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showOptionDialog()V
    .locals 7

    .prologue
    .line 2258
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;)V

    .line 2290
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2291
    .local v1, itemTitles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2292
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0a00d0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2299
    .local v0, adapter:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->canBeHidden:Z

    if-nez v3, :cond_0

    .line 2300
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;->setDisabledItem(I)V

    .line 2303
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->getLable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showAlertDialog(Landroid/app/AlertDialog$Builder;)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/AlertDialog$Builder;)V

    .line 2307
    return-void

    .line 2292
    .end local v0           #adapter:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$ItemAdapter;
    :cond_1
    const v3, 0x7f0a00d1

    goto :goto_0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->showOptionDialog()V

    .line 2241
    const/4 v0, 0x1

    return v0
.end method
