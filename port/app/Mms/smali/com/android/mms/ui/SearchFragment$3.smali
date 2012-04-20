.class Lcom/android/mms/ui/SearchFragment$3;
.super Landroid/content/AsyncQueryHandler;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 225
    if-nez p3, :cond_0

    .line 238
    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    .line 229
    check-cast v1, Ljava/lang/String;

    .line 230
    .local v1, searchString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/SearchFragment;->access$300(Lcom/android/mms/ui/SearchFragment;)Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 232
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 233
    .local v0, cursorCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/SearchFragment;->access$400(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
