.class Lcom/android/contacts/list/AccountFilterView$1;
.super Ljava/lang/Object;
.source "AccountFilterView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/AccountFilterView;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/AccountFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$1;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "v"
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
    .line 79
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$1;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 80
    return-void
.end method
