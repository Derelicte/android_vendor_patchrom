.class Lcom/android/contacts/picker/PickerRecentFragment$1;
.super Ljava/lang/Object;
.source "PickerRecentFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/PickerRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/MatrixCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/picker/PickerRecentFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/picker/PickerRecentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/contacts/picker/PickerRecentFragment$1;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/MatrixCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/android/contacts/picker/RecentLoader;

    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$1;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    invoke-virtual {v1}, Lcom/android/contacts/picker/PickerRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/picker/RecentLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/MatrixCursor;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/MatrixCursor;",
            ">;",
            "Landroid/database/MatrixCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/MatrixCursor;>;"
    const/4 v5, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment$1;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    #getter for: Lcom/android/contacts/picker/PickerRecentFragment;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerRecentFragment;->access$000(Lcom/android/contacts/picker/PickerRecentFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/picker/PickerRecentFragment$1;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    const v2, 0x7f0b0216

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/picker/PickerRecentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment$1;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    #getter for: Lcom/android/contacts/picker/PickerRecentFragment;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerRecentFragment;->access$100(Lcom/android/contacts/picker/PickerRecentFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/picker/PickerRecentFragment$1;->this$0:Lcom/android/contacts/picker/PickerRecentFragment;

    #calls: Lcom/android/contacts/picker/PickerRecentFragment;->bindView(Landroid/database/MatrixCursor;)V
    invoke-static {v0, p2}, Lcom/android/contacts/picker/PickerRecentFragment;->access$200(Lcom/android/contacts/picker/PickerRecentFragment;Landroid/database/MatrixCursor;)V

    .line 82
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/MatrixCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/picker/PickerRecentFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/MatrixCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/MatrixCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/MatrixCursor;>;"
    return-void
.end method
