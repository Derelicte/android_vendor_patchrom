.class Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;
.super Ljava/lang/Object;
.source "WorldClockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/WorldClockFragment$ModeCallBack;

.field final synthetic val$checkedIds:[J


# direct methods
.method constructor <init>(Lcom/android/deskclock/WorldClockFragment$ModeCallBack;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;->this$1:Lcom/android/deskclock/WorldClockFragment$ModeCallBack;

    iput-object p2, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;->val$checkedIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v7, 0x0

    .line 205
    iget-object v6, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;->val$checkedIds:[J

    if-eqz v6, :cond_1

    .line 206
    iget-object v6, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;->this$1:Lcom/android/deskclock/WorldClockFragment$ModeCallBack;

    iget-object v6, v6, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/deskclock/WorldClockFragment;->access$600(Lcom/android/deskclock/WorldClockFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 207
    .local v3, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;->val$checkedIds:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v1, v0, v4

    .line 208
    .local v1, checkedId:J
    sget-object v6, Lcom/android/deskclock/WorldClock;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    .end local v1           #checkedId:J
    :cond_0
    iget-object v6, p0, Lcom/android/deskclock/WorldClockFragment$ModeCallBack$2;->this$1:Lcom/android/deskclock/WorldClockFragment$ModeCallBack;

    #getter for: Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->mEditableListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/android/deskclock/WorldClockFragment$ModeCallBack;->access$500(Lcom/android/deskclock/WorldClockFragment$ModeCallBack;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 214
    .end local v0           #arr$:[J
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method
