.class Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;
.super Ljava/lang/Thread;
.source "RemoveDuplicateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteThread"
.end annotation


# instance fields
.field mBatchOperation:Lmiui/provider/BatchOperation;

.field private mIds:[J

.field private mMarkDelete:[I

.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateService;[J[I)V
    .locals 2
    .parameter
    .parameter "ids"
    .parameter "markDelete"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    new-instance v0, Lmiui/provider/BatchOperation;

    iget-object v1, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v1}, Lcom/android/contacts/preference/RemoveDuplicateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mBatchOperation:Lmiui/provider/BatchOperation;

    .line 117
    iput-object p2, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mIds:[J

    .line 118
    iput-object p3, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mMarkDelete:[I

    .line 119
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 124
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 128
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 130
    .local v4, time:J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 131
    .local v0, URI:Landroid/net/Uri;
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "caller_is_syncadapter"

    const-string v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, URI_DELETE:Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mIds:[J

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 136
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mMarkDelete:[I

    aget v7, v7, v2

    if-ne v7, v11, :cond_3

    move-object v6, v0

    .line 137
    .local v6, uri:Landroid/net/Uri;
    :goto_1
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mIds:[J

    aget-wide v9, v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 141
    .local v3, op:Landroid/content/ContentProviderOperation;
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mBatchOperation:Lmiui/provider/BatchOperation;

    invoke-virtual {v7, v3}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 143
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mBatchOperation:Lmiui/provider/BatchOperation;

    invoke-virtual {v7}, Lmiui/provider/BatchOperation;->size()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_1

    .line 144
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mBatchOperation:Lmiui/provider/BatchOperation;

    invoke-virtual {v7}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 147
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 148
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/android/contacts/preference/RemoveDuplicateService$Listener;->onProgress(I)V

    .line 135
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #op:Landroid/content/ContentProviderOperation;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    move-object v6, v1

    .line 136
    goto :goto_1

    .line 152
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mBatchOperation:Lmiui/provider/BatchOperation;

    invoke-virtual {v7}, Lmiui/provider/BatchOperation;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 153
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mBatchOperation:Lmiui/provider/BatchOperation;

    invoke-virtual {v7}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 156
    :cond_5
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 157
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->mIds:[J

    array-length v8, v8

    invoke-interface {v7, v8}, Lcom/android/contacts/preference/RemoveDuplicateService$Listener;->onProgress(I)V

    .line 158
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/contacts/preference/RemoveDuplicateService$Listener;->onFinished(Z)V

    .line 161
    :cond_6
    const-string v7, "RemoveDuplicateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*****deleted duplicate contact time coast : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z
    invoke-static {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 165
    invoke-static {v11}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 168
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v7}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    .line 170
    return-void

    .line 164
    .end local v0           #URI:Landroid/net/Uri;
    .end local v1           #URI_DELETE:Landroid/net/Uri;
    .end local v2           #i:I
    .end local v4           #time:J
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 165
    invoke-static {v11}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 168
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$DeleteThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    throw v7
.end method
