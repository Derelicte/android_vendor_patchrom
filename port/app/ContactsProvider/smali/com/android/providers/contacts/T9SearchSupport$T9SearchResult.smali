.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9SearchResult"
.end annotation


# instance fields
.field public mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

.field public mObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    .line 216
    return-void
.end method


# virtual methods
.method public getMatchedDetail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    if-eqz v3, :cond_2

    .line 226
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    .line 227
    .local v2, matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 229
    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x31

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const/16 v3, 0x30

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :goto_2
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getMatchedLevel()I
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    if-eqz v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;

    .line 239
    .local v0, matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    iget v1, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;->mLevel:I

    .line 241
    .end local v0           #matches:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameMatchs;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
