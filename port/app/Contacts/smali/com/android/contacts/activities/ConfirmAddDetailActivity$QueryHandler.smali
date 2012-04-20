.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConfirmAddDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .line 427
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 428
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 433
    :try_start_0
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    move-result-object v12

    if-eq p0, v12, :cond_1

    .line 434
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$500()Ljava/lang/String;

    move-result-object v12

    const-string v13, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    if-eqz p3, :cond_0

    .line 547
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    :try_start_1
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->isFinishing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_2

    .line 546
    if-eqz p3, :cond_0

    .line 547
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 441
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 546
    :cond_3
    :goto_1
    if-eqz p3, :cond_0

    .line 547
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 444
    :pswitch_0
    const/4 v7, 0x0

    .line 445
    .local v7, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_4

    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 447
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 448
    .local v8, photoData:[B
    const/4 v12, 0x0

    array-length v13, v8

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 452
    .end local v8           #photoData:[B
    :cond_4
    if-eqz v7, :cond_3

    .line 453
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 546
    .end local v7           #photoBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v12

    if-eqz p3, :cond_5

    .line 547
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v12

    .line 460
    :pswitch_1
    if-eqz p3, :cond_3

    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 462
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$702(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 468
    .local v9, photoId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-nez v12, :cond_6

    .line 469
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    #setter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J
    invoke-static {v12, v13, v14}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$802(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J

    .line 470
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-object v13, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startDisambiguationQuery(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 473
    :cond_6
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J

    move-result-wide v12

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 475
    .local v5, lookupUri:Landroid/net/Uri;
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v13, 0x0

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startPhotoQuery(JLandroid/net/Uri;Z)V
    invoke-static {v12, v9, v10, v5, v13}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;Z)V

    .line 479
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    .line 480
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    .line 492
    .end local v5           #lookupUri:Landroid/net/Uri;
    .end local v9           #photoId:J
    :pswitch_2
    if-eqz p3, :cond_7

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_7

    .line 493
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startExtraInfoQuery()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    .line 497
    :cond_7
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    .line 498
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    .line 505
    :pswitch_3
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 506
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v2, hashMapCursorData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_a

    .line 515
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, mimeType:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 517
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 518
    .local v11, value:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 521
    const-string v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 522
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 524
    :cond_8
    invoke-virtual {v2, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .end local v11           #value:Ljava/lang/String;
    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 533
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1400()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_b

    aget-object v6, v1, v3

    .line 534
    .restart local v6       #mimeType:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 535
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    .line 536
    iget-object v13, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setExtraInfoField(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1500(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V

    .line 540
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_b
    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V
    invoke-static {v12}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 533
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
