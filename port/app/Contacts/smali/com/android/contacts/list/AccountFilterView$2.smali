.class Lcom/android/contacts/list/AccountFilterView$2;
.super Ljava/lang/Object;
.source "AccountFilterView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 82
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$2;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$2;->this$0:Lcom/android/contacts/list/AccountFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/AccountFilterView;->setDropdownArrow(Z)V

    .line 87
    return-void
.end method
