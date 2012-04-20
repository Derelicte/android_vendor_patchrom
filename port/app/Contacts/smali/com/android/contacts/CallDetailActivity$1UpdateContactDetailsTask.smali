.class Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/contacts/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 346
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 6
    .parameter "params"

    .prologue
    .line 351
    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 352
    .local v3, numCalls:I
    new-array v0, v3, [Lcom/android/contacts/PhoneCallDetails;

    .line 354
    .local v0, details:[Lcom/android/contacts/PhoneCallDetails;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 355
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    #calls: Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    invoke-static {v4, v5}, Lcom/android/contacts/CallDetailActivity;->access$100(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 360
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "CallDetail"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v0, 0x0

    .end local v0           #details:[Lcom/android/contacts/PhoneCallDetails;
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 346
    check-cast p1, [Lcom/android/contacts/PhoneCallDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
    .locals 23
    .parameter "details"

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0b0080

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/contacts/CallDetailActivity;->finish()V

    .line 530
    :goto_0
    return-void

    .line 377
    :cond_0
    const/4 v2, 0x0

    aget-object v13, p1, v2

    .line 378
    .local v13, firstDetails:Lcom/android/contacts/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v3, v13, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/contacts/CallDetailActivity;->access$202(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v10, v13, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 380
    .local v10, contactUri:Landroid/net/Uri;
    iget-object v0, v13, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 383
    .local v22, photoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$400(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$300(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/android/contacts/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/contacts/PhoneCallDetails;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 387
    .local v21, numberCallUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 388
    .local v8, canPlaceCallsTo:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v16

    .line 389
    .local v16, isVoicemailNumber:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 398
    .local v15, isSipNumber:Z
    iget-object v2, v13, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    iget-object v0, v13, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 404
    .local v20, nameOrNumber:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v10, :cond_4

    .line 405
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    .local v19, mainActionIntent:Landroid/content/Intent;
    const v18, 0x7f020066

    .line 407
    .local v18, mainActionIcon:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0b01b3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 440
    .local v17, mainActionDescription:Ljava/lang/String;
    :goto_2
    if-nez v19, :cond_8

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$300(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :goto_3
    if-eqz v8, :cond_9

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    iget-object v3, v13, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, v13, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 466
    .local v11, displayNumber:Ljava/lang/CharSequence;
    new-instance v12, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0b0021

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v5, 0x7f0b01b4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v2, v3, v4}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 472
    .local v12, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    iget-object v2, v13, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v13, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v13, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v2, v2, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget v3, v13, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    iget-object v4, v13, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v12, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 481
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    const v2, 0x7f0200b1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v5, 0x7f0b01b5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/contacts/CallDetailActivity$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 489
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    invoke-static {v2, v12}, Lcom/android/contacts/CallDetailActivity;->access$900(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    .line 494
    .end local v11           #displayNumber:Ljava/lang/CharSequence;
    .end local v12           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    if-eqz v8, :cond_a

    if-nez v15, :cond_a

    if-nez v16, :cond_a

    const/4 v2, 0x1

    :goto_5
    #setter for: Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCall:Z
    invoke-static {v3, v2}, Lcom/android/contacts/CallDetailActivity;->access$1102(Lcom/android/contacts/CallDetailActivity;Z)Z

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/contacts/CallDetailActivity;->invalidateOptionsMenu()V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 498
    .local v14, historyList:Landroid/widget/ListView;
    new-instance v2, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v4, v4, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;
    invoke-static {v5}, Lcom/android/contacts/CallDetailActivity;->access$1200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v6}, Lcom/android/contacts/CallDetailActivity;->access$1300(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v9, 0x7f07002c

    invoke-virtual {v6, v9}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/contacts/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/calllog/CallTypeHelper;[Lcom/android/contacts/PhoneCallDetails;ZZLandroid/view/View;)V

    invoke-virtual {v14, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 502
    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;)V

    invoke-static {v2, v14}, Lcom/android/contacts/BackScrollManager;->bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v22

    #calls: Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/android/contacts/CallDetailActivity;->access$1400(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f07002a

    invoke-virtual {v2, v3}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 401
    .end local v14           #historyList:Landroid/widget/ListView;
    .end local v17           #mainActionDescription:Ljava/lang/String;
    .end local v18           #mainActionIcon:I
    .end local v19           #mainActionIntent:Landroid/content/Intent;
    .end local v20           #nameOrNumber:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, v13, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .restart local v20       #nameOrNumber:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 409
    :cond_4
    if-eqz v16, :cond_5

    .line 410
    const/16 v19, 0x0

    .line 411
    .restart local v19       #mainActionIntent:Landroid/content/Intent;
    const/16 v18, 0x0

    .line 412
    .restart local v18       #mainActionIcon:I
    const/16 v17, 0x0

    .restart local v17       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 413
    .end local v17           #mainActionDescription:Ljava/lang/String;
    .end local v18           #mainActionIcon:I
    .end local v19           #mainActionIntent:Landroid/content/Intent;
    :cond_5
    if-eqz v15, :cond_6

    .line 423
    const/16 v19, 0x0

    .line 424
    .restart local v19       #mainActionIntent:Landroid/content/Intent;
    const/16 v18, 0x0

    .line 425
    .restart local v18       #mainActionIcon:I
    const/16 v17, 0x0

    .restart local v17       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 426
    .end local v17           #mainActionDescription:Ljava/lang/String;
    .end local v18           #mainActionIcon:I
    .end local v19           #mainActionIntent:Landroid/content/Intent;
    :cond_6
    if-eqz v8, :cond_7

    .line 427
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v19       #mainActionIntent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const v18, 0x7f02005e

    .line 431
    .restart local v18       #mainActionIcon:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v3, 0x7f0b01b2

    invoke-virtual {v2, v3}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 435
    .end local v17           #mainActionDescription:Ljava/lang/String;
    .end local v18           #mainActionIcon:I
    .end local v19           #mainActionIntent:Landroid/content/Intent;
    :cond_7
    const/16 v19, 0x0

    .line 436
    .restart local v19       #mainActionIntent:Landroid/content/Intent;
    const/16 v18, 0x0

    .line 437
    .restart local v18       #mainActionIcon:I
    const/16 v17, 0x0

    .restart local v17       #mainActionDescription:Ljava/lang/String;
    goto/16 :goto_2

    .line 446
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$600(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$300(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 491
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->disableCallButton()V
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1000(Lcom/android/contacts/CallDetailActivity;)V

    goto/16 :goto_4

    .line 494
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_5
.end method
