.class Lcom/android/contacts/list/AccountFilterView$AccountClickListener;
.super Ljava/lang/Object;
.source "AccountFilterView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/AccountFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/AccountFilterView;Lcom/android/contacts/list/AccountFilterView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;-><init>(Lcom/android/contacts/list/AccountFilterView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 371
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v1}, Lcom/android/contacts/list/AccountFilterView;->access$900(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 375
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    .line 376
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v1}, Lcom/android/contacts/list/AccountFilterView;->access$900(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView$AccountClickListener;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0
.end method
