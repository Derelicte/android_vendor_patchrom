.class Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "AccountFilterView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/AccountFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/AccountFilterView;Lcom/android/contacts/list/AccountFilterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterView;)V

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
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/android/contacts/list/AccountFilterView$FilterLoader;

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/AccountFilterView;->access$300(Lcom/android/contacts/list/AccountFilterView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/AccountFilterView$FilterLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    if-nez p2, :cond_1

    .line 298
    invoke-static {}, Lcom/android/contacts/list/AccountFilterView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load filters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    iget-object v3, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/list/AccountFilterView;->access$300(Lcom/android/contacts/list/AccountFilterView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;-><init>(Lcom/android/contacts/list/AccountFilterView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;

    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;-><init>(Lcom/android/contacts/list/AccountFilterView;Lcom/android/contacts/list/AccountFilterView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mAccountLoadFinishListener:Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$600(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mAccountLoadFinishListener:Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$600(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;->onAccountLoadFinish(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    return-void
.end method
