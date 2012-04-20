.class Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageOrderManager;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 1
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1
    .parameter "params"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #calls: Lcom/android/email/activity/MessageOrderManager;->openNewCursor()Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$500(Lcom/android/email/activity/MessageOrderManager;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 324
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageOrderManager;->onCursorOpenDone(Landroid/database/Cursor;)V

    .line 340
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 324
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->onCancelled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onSuccess(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageOrderManager;->onCursorOpenDone(Landroid/database/Cursor;)V

    .line 345
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 324
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->onSuccess(Landroid/database/Cursor;)V

    return-void
.end method
