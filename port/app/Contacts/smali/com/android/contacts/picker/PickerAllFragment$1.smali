.class Lcom/android/contacts/picker/PickerAllFragment$1;
.super Ljava/lang/Object;
.source "PickerAllFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/picker/PickerAllFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/picker/PickerAllFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/picker/PickerAllFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/contacts/picker/PickerAllFragment$1;->this$0:Lcom/android/contacts/picker/PickerAllFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/picker/PickerAllFragment$1;->this$0:Lcom/android/contacts/picker/PickerAllFragment;

    #getter for: Lcom/android/contacts/picker/PickerAllFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/picker/PickerAllFragment;->access$000(Lcom/android/contacts/picker/PickerAllFragment;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 62
    return-void
.end method
