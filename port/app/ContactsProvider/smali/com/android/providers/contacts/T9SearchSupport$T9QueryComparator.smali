.class Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9QueryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I
    .locals 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 251
    if-ne p1, p2, :cond_1

    .line 252
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    move-object v1, p1

    .line 256
    .local v1, r1:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    move-object v3, p2

    .line 258
    .local v3, r2:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$000(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v2

    .line 259
    .local v2, r1SP:Z
    iget-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    #calls: Lcom/android/providers/contacts/T9SearchSupport;->isSPSearchItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z
    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->access$000(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)Z

    move-result v4

    .line 261
    .local v4, r2SP:Z
    if-ne v2, v4, :cond_2

    .line 269
    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->getMatchedLevel()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->getMatchedLevel()I

    move-result v6

    sub-int v0, v5, v6

    .line 270
    .local v0, i:I
    if-eqz v0, :cond_4

    .line 271
    neg-int v0, v0

    goto :goto_0

    .line 262
    .end local v0           #i:I
    :cond_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 274
    .restart local v0       #i:I
    :cond_4
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    iget-object v7, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v7, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 275
    if-eqz v0, :cond_5

    .line 276
    neg-int v0, v0

    goto :goto_0

    .line 279
    :cond_5
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->access$100()Ljava/text/Collator;

    move-result-object v5

    iget-object v6, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v6, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v7, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 280
    if-nez v0, :cond_0

    .line 284
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    iget-object v7, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v7, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 285
    if-nez v0, :cond_0

    .line 288
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    iget-object v7, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v7, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 289
    if-nez v0, :cond_0

    .line 292
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    iget-object v7, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v7, v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    check-cast p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .end local p1
    check-cast p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;->compare(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)I

    move-result v0

    return v0
.end method
