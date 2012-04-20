.class public Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/AbstractSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Operation"
.end annotation


# instance fields
.field final TYPES:[Ljava/lang/String;

.field final mBuilder:Landroid/content/ContentProviderOperation$Builder;

.field final mColumnName:Ljava/lang/String;

.field final mOffset:I

.field final mOp:Landroid/content/ContentProviderOperation;

.field mSeparator:Z


# direct methods
.method constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "???"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Ins"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Upd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Del"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Assert"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->TYPES:[Ljava/lang/String;

    .line 181
    iput-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 182
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 183
    iput-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    .line 184
    iput v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    .line 185
    return-void
.end method

.method constructor <init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V
    .locals 3
    .parameter "builder"
    .parameter "columnName"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "???"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Ins"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Upd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Del"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Assert"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->TYPES:[Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 175
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 176
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    .line 177
    iput p3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    .line 178
    return-void
.end method

.method constructor <init>(Landroid/content/ContentProviderOperation;)V
    .locals 5
    .parameter "op"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "???"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Ins"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Upd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Del"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Assert"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->TYPES:[Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 189
    iput-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 190
    iput-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    .line 191
    iput v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    .line 192
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Op: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 197
    .local v0, op:Landroid/content/ContentProviderOperation;
    const/4 v2, 0x0

    .line 200
    .local v2, type:I
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 202
    .local v3, uri:Landroid/net/Uri;
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Back value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
