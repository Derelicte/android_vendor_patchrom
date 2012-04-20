.class Lcom/miui/backup/BackupActivity$BackupTabListener;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupActivity;


# direct methods
.method private constructor <init>(Lcom/miui/backup/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/miui/backup/BackupActivity$BackupTabListener;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/miui/backup/BackupActivity$BackupTabListener;-><init>(Lcom/miui/backup/BackupActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 219
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/miui/backup/BackupActivity$BackupTabListener;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v1, v0}, Lcom/miui/backup/BackupActivity;->selectTab(Lcom/miui/backup/BackupActivity$TabState;)V

    .line 224
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 214
    return-void
.end method
