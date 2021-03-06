.class public Lcom/android/phone/NotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarNavigationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 201
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method

.method private updateStatusBar()V
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_0

    .line 253
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 255
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-nez v1, :cond_1

    .line 256
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 258
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-nez v1, :cond_2

    .line 260
    const/high16 v1, 0x20

    or-int/2addr v0, v1

    .line 261
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 262
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 265
    :cond_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusBar: state = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 267
    return-void
.end method


# virtual methods
.method public enableExpandedView(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_0

    .line 226
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 227
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 229
    :cond_0
    return-void
.end method

.method public enableNotificationAlerts(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 212
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 213
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 215
    :cond_0
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 241
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 242
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 244
    :cond_0
    return-void
.end method
