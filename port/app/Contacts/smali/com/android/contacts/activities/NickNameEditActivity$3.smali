.class Lcom/android/contacts/activities/NickNameEditActivity$3;
.super Ljava/lang/Object;
.source "NickNameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NickNameEditActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NickNameEditActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NickNameEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/contacts/activities/NickNameEditActivity$3;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity$3;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    #getter for: Lcom/android/contacts/activities/NickNameEditActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/activities/NickNameEditActivity;->access$200(Lcom/android/contacts/activities/NickNameEditActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 117
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity$3;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    #calls: Lcom/android/contacts/activities/NickNameEditActivity;->hideSoftInput()V
    invoke-static {v0}, Lcom/android/contacts/activities/NickNameEditActivity;->access$300(Lcom/android/contacts/activities/NickNameEditActivity;)V

    .line 118
    const/4 v0, 0x0

    return v0
.end method
