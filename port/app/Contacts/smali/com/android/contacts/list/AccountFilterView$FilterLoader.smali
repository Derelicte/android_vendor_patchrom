.class Lcom/android/contacts/list/AccountFilterView$FilterLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AccountFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 232
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$FilterLoader;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterView$FilterLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$FilterLoader;->mContext:Landroid/content/Context;

    #calls: Lcom/android/contacts/list/AccountFilterView;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$200(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterView$FilterLoader;->onStopLoading()V

    .line 254
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterView$FilterLoader;->forceLoad()V

    .line 244
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterView$FilterLoader;->cancelLoad()Z

    .line 249
    return-void
.end method
