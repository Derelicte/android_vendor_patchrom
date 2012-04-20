.class public Lcom/android/providers/contacts/ContactMatcher;
.super Ljava/lang/Object;
.source "ContactMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    }
.end annotation


# static fields
.field private static sMaxScore:[I

.field private static sMinScore:[I


# instance fields
.field private final mNameDistanceApproximate:Lcom/android/providers/contacts/NameDistance;

.field private final mNameDistanceConservative:Lcom/android/providers/contacts/NameDistance;

.field private mScoreCount:I

.field private final mScoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation
.end field

.field private final mScores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x3c

    const/16 v4, 0x32

    .line 89
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/contacts/ContactMatcher;->sMinScore:[I

    .line 91
    const/16 v0, 0x19

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/contacts/ContactMatcher;->sMaxScore:[I

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x63

    const/16 v3, 0x63

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 105
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 107
    const/16 v0, 0x50

    invoke-static {v6, v6, v4, v0}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 110
    const/16 v0, 0x1e

    invoke-static {v6, v8, v0, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 112
    invoke-static {v6, v7, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 115
    invoke-static {v8, v8, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 117
    invoke-static {v8, v6, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 119
    invoke-static {v8, v7, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 122
    invoke-static {v7, v7, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 124
    invoke-static {v7, v6, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 126
    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->setScoreRange(IIII)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    .line 244
    new-instance v0, Lcom/android/providers/contacts/NameDistance;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameDistance;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/NameDistance;

    .line 245
    new-instance v0, Lcom/android/providers/contacts/NameDistance;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/NameDistance;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/NameDistance;

    return-void
.end method

.method private getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .locals 3
    .parameter "contactId"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 249
    .local v0, matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-le v1, v2, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    check-cast v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 252
    .restart local v0       #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->reset(J)V

    .line 257
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    .line 258
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-object v0

    .line 254
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .end local v0           #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-direct {v0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;-><init>(J)V

    .line 255
    .restart local v0       #matchingScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getMaxScore(II)I
    .locals 2
    .parameter "candidateNameType"
    .parameter "nameType"

    .prologue
    .line 154
    mul-int/lit8 v1, p1, 0x5

    add-int v0, v1, p0

    .line 155
    .local v0, index:I
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMaxScore:[I

    aget v1, v1, v0

    return v1
.end method

.method private static getMinScore(II)I
    .locals 2
    .parameter "candidateNameType"
    .parameter "nameType"

    .prologue
    .line 145
    mul-int/lit8 v1, p1, 0x5

    add-int v0, v1, p0

    .line 146
    .local v0, index:I
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMinScore:[I

    aget v1, v1, v0

    return v1
.end method

.method private static setScoreRange(IIII)V
    .locals 2
    .parameter "candidateNameType"
    .parameter "nameType"
    .parameter "scoreFrom"
    .parameter "scoreTo"

    .prologue
    .line 135
    mul-int/lit8 v1, p1, 0x5

    add-int v0, v1, p0

    .line 136
    .local v0, index:I
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMinScore:[I

    aput p2, v1, v0

    .line 137
    sget-object v1, Lcom/android/providers/contacts/ContactMatcher;->sMaxScore:[I

    aput p3, v1, v0

    .line 138
    return-void
.end method

.method private updatePrimaryScore(JI)V
    .locals 1
    .parameter "contactId"
    .parameter "score"

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->updatePrimaryScore(I)V

    .line 334
    return-void
.end method

.method private updateSecondaryScore(JI)V
    .locals 1
    .parameter "contactId"
    .parameter "score"

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->updateSecondaryScore(I)V

    .line 338
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    .line 351
    return-void
.end method

.method public keepIn(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->keepIn()V

    .line 342
    return-void
.end method

.method public keepOut(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->keepOut()V

    .line 346
    return-void
.end method

.method public matchIdentity(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 267
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->updatePrimaryScore(JI)V

    .line 268
    return-void
.end method

.method public matchName(JILjava/lang/String;ILjava/lang/String;I)V
    .locals 14
    .parameter "contactId"
    .parameter "candidateNameType"
    .parameter "candidateName"
    .parameter "nameType"
    .parameter "name"
    .parameter "algorithm"

    .prologue
    .line 279
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->getMaxScore(II)I

    move-result v6

    .line 280
    .local v6, maxScore:I
    if-nez v6, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 285
    move-wide v0, p1

    invoke-direct {p0, v0, v1, v6}, Lcom/android/providers/contacts/ContactMatcher;->updatePrimaryScore(JI)V

    goto :goto_0

    .line 289
    :cond_2
    if-eqz p7, :cond_0

    .line 293
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->getMinScore(II)I

    move-result v7

    .line 294
    .local v7, minScore:I
    if-eq v7, v6, :cond_0

    .line 298
    invoke-static/range {p4 .. p4}, Lcom/android/providers/contacts/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v2

    .line 299
    .local v2, decodedCandidateName:[B
    invoke-static/range {p6 .. p6}, Lcom/android/providers/contacts/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v3

    .line 301
    .local v3, decodedName:[B
    const/4 v11, 0x1

    move/from16 v0, p7

    if-ne v0, v11, :cond_4

    iget-object v8, p0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/NameDistance;

    .line 305
    .local v8, nameDistance:Lcom/android/providers/contacts/NameDistance;
    :goto_1
    invoke-virtual {v8, v2, v3}, Lcom/android/providers/contacts/NameDistance;->getDistance([B[B)F

    move-result v4

    .line 306
    .local v4, distance:F
    const/4 v11, 0x4

    move/from16 v0, p3

    if-eq v0, v11, :cond_3

    const/4 v11, 0x4

    move/from16 v0, p5

    if-ne v0, v11, :cond_5

    :cond_3
    const/4 v5, 0x1

    .line 308
    .local v5, emailBased:Z
    :goto_2
    if-eqz v5, :cond_6

    const v10, 0x3f733333

    .line 311
    .local v10, threshold:F
    :goto_3
    cmpl-float v11, v4, v10

    if-lez v11, :cond_7

    .line 312
    int-to-float v11, v7

    sub-int v12, v6, v7

    int-to-float v12, v12

    const/high16 v13, 0x3f80

    sub-float/2addr v13, v4

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v9, v11

    .line 317
    .local v9, score:I
    :goto_4
    move-wide v0, p1

    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactMatcher;->updatePrimaryScore(JI)V

    goto :goto_0

    .line 301
    .end local v4           #distance:F
    .end local v5           #emailBased:Z
    .end local v8           #nameDistance:Lcom/android/providers/contacts/NameDistance;
    .end local v9           #score:I
    .end local v10           #threshold:F
    :cond_4
    iget-object v8, p0, Lcom/android/providers/contacts/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/NameDistance;

    goto :goto_1

    .line 306
    .restart local v4       #distance:F
    .restart local v8       #nameDistance:Lcom/android/providers/contacts/NameDistance;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 308
    .restart local v5       #emailBased:Z
    :cond_6
    const v10, 0x3f51eb85

    goto :goto_3

    .line 314
    .restart local v10       #threshold:F
    :cond_7
    const/4 v9, 0x0

    .restart local v9       #score:I
    goto :goto_4
.end method

.method public pickBestMatch(IZ)J
    .locals 8
    .parameter "threshold"
    .parameter "allowMultipleMatches"

    .prologue
    .line 386
    const-wide/16 v0, -0x1

    .line 387
    .local v0, contactId:J
    const/4 v3, 0x0

    .line 388
    .local v3, maxScore:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v2, v6, :cond_2

    .line 389
    iget-object v6, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 390
    .local v5, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 388
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_1
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepIn:Z
    invoke-static {v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$400(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 395
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 413
    .end local v0           #contactId:J
    .end local v5           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_2
    :goto_2
    return-wide v0

    .line 398
    .restart local v0       #contactId:J
    .restart local v5       #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_3
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I
    invoke-static {v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$300(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v4

    .line 399
    .local v4, s:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 400
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I
    invoke-static {v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v4

    .line 403
    :cond_4
    if-lt v4, p1, :cond_0

    .line 404
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_5

    .line 405
    const-wide/16 v0, -0x2

    goto :goto_2

    .line 407
    :cond_5
    if-le v4, v3, :cond_0

    .line 408
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v5}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v0

    .line 409
    move v3, v4

    goto :goto_1
.end method

.method public pickBestMatches(I)Ljava/util/List;
    .locals 8
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 420
    mul-int/lit16 v4, p1, 0x3e8

    .line 421
    .local v4, scaledThreshold:I
    iget-object v5, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 422
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v1, v5, :cond_0

    .line 425
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 426
    .local v2, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getScore()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 427
    add-int/lit8 v0, v0, 0x1

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v2           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_0
    invoke-interface {v3, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public prepareSecondaryMatchCandidates(I)Ljava/util/List;
    .locals 6
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    if-ge v1, v4, :cond_3

    .line 364
    iget-object v4, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 365
    .local v3, score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mKeepOut:Z
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$000(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_0
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mSecondaryScore:I
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$100(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)I

    move-result v2

    .line 370
    .local v2, s:I
    if-lt v2, p1, :cond_2

    .line 371
    if-nez v0, :cond_1

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .restart local v0       #contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    #getter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mContactId:J
    invoke-static {v3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$200(Lcom/android/providers/contacts/ContactMatcher$MatchScore;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_2
    const/4 v4, -0x1

    #setter for: Lcom/android/providers/contacts/ContactMatcher$MatchScore;->mPrimaryScore:I
    invoke-static {v3, v4}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->access$302(Lcom/android/providers/contacts/ContactMatcher$MatchScore;I)I

    goto :goto_1

    .line 378
    .end local v2           #s:I
    .end local v3           #score:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/providers/contacts/ContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateScoreWithEmailMatch(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 325
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->updateSecondaryScore(JI)V

    .line 326
    return-void
.end method

.method public updateScoreWithNicknameMatch(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 329
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->updateSecondaryScore(JI)V

    .line 330
    return-void
.end method

.method public updateScoreWithPhoneNumberMatch(J)V
    .locals 1
    .parameter "contactId"

    .prologue
    .line 321
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactMatcher;->updateSecondaryScore(JI)V

    .line 322
    return-void
.end method
