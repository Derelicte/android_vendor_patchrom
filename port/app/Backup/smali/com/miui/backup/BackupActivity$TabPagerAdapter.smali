.class Lcom/miui/backup/BackupActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/miui/backup/BackupActivity;


# direct methods
.method public constructor <init>(Lcom/miui/backup/BackupActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 146
    invoke-virtual {p1}, Lcom/miui/backup/BackupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 147
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 182
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 189
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 191
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/miui/backup/BackupActivity$TabState;->values()[Lcom/miui/backup/BackupActivity$TabState;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->this$0:Lcom/miui/backup/BackupActivity;

    #getter for: Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;
    invoke-static {v0}, Lcom/miui/backup/BackupActivity;->access$200(Lcom/miui/backup/BackupActivity;)Lcom/miui/backup/ui/LocalBackupFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 158
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->this$0:Lcom/miui/backup/BackupActivity;

    #getter for: Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;
    invoke-static {v0}, Lcom/miui/backup/BackupActivity;->access$300(Lcom/miui/backup/BackupActivity;)Lcom/miui/milk/ui/CloudBackupFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 161
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/miui/backup/BackupActivity$TabPagerAdapter;->this$0:Lcom/miui/backup/BackupActivity;

    #calls: Lcom/miui/backup/BackupActivity;->getFragment(I)Landroid/app/Fragment;
    invoke-static {v1, p2}, Lcom/miui/backup/BackupActivity;->access$400(Lcom/miui/backup/BackupActivity;I)Landroid/app/Fragment;

    move-result-object v0

    .line 173
    .local v0, f:Landroid/app/Fragment;
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 195
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 205
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 168
    return-void
.end method
