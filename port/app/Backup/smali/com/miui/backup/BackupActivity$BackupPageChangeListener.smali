.class Lcom/miui/backup/BackupActivity$BackupPageChangeListener;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupActivity;


# direct methods
.method private constructor <init>(Lcom/miui/backup/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/backup/BackupActivity$BackupPageChangeListener;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/miui/backup/BackupActivity$BackupPageChangeListener;-><init>(Lcom/miui/backup/BackupActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 231
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 235
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 239
    invoke-static {p1}, Lcom/miui/backup/BackupActivity$TabState;->fromInt(I)Lcom/miui/backup/BackupActivity$TabState;

    move-result-object v0

    .line 240
    .local v0, tab:Lcom/miui/backup/BackupActivity$TabState;
    iget-object v1, p0, Lcom/miui/backup/BackupActivity$BackupPageChangeListener;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-virtual {v1, v0}, Lcom/miui/backup/BackupActivity;->selectTab(Lcom/miui/backup/BackupActivity$TabState;)V

    .line 241
    return-void
.end method
