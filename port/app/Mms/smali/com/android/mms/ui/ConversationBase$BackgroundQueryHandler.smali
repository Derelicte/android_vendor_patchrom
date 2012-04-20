.class public final Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    .line 1352
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1353
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$210(Lcom/android/mms/ui/ConversationBase;)I

    .line 1369
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$200(Lcom/android/mms/ui/ConversationBase;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1370
    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$300()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1371
    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$300()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1372
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1375
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1357
    if-nez p3, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1359
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1361
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->requestChangeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/ConversationBase;->access$1900(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method
