.class Lcom/android/contacts/editor/ContactEditorFragment$3$2;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$2;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$2;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$2;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$arrowMark:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setDropdownArrow(Landroid/widget/ImageView;Z)V

    .line 920
    return-void
.end method
