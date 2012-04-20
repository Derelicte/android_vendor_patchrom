.class Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallDetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallDetailHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/contacts/calllog/CallDetailHistoryAdapter$1;->this$0:Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;->access$000(Lcom/android/contacts/calllog/CallDetailHistoryAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 59
    :cond_0
    return-void
.end method
