.class Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedResults"
.end annotation


# instance fields
.field private mQuery:Ljava/lang/String;

.field private mResults:[Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    .line 953
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v6, 0x0

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 962
    .local v2, minLength:I
    if-lez v2, :cond_2

    .line 963
    const/4 v0, 0x0

    .local v0, i:I
    add-int/lit8 v1, v2, -0x1

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 964
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    .line 965
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    aput-object v6, v3, v0

    .line 963
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 970
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_2
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    .line 971
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput-object p2, v3, v4

    .line 972
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    .line 958
    return-void
.end method

.method public getResults(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 977
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 981
    .local v2, minLength:I
    const/4 v1, -0x1

    .line 982
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    :cond_0
    const/4 v3, 0x0

    .line 986
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    if-ltz v1, :cond_1

    .line 987
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 990
    new-instance v3, Landroid/util/Pair;

    .end local v3           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1004
    .restart local v3       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v3

    .line 995
    :cond_2
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_1

    .line 996
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 997
    new-instance v3, Landroid/util/Pair;

    .end local v3           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$CachedResults;->mResults:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    .restart local v3       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;Ljava/lang/String;>;"
    goto :goto_1

    .line 995
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
