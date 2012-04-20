.class public Lcom/android/quicksearchbox/SuggestionData;
.super Ljava/lang/Object;
.source "SuggestionData.java"

# interfaces
.implements Lcom/android/quicksearchbox/Suggestion;


# instance fields
.field private mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

.field private mFormat:Ljava/lang/String;

.field private mIcon1:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentData:Ljava/lang/String;

.field private mIntentExtraData:Ljava/lang/String;

.field private mIsHistory:Z

.field private mIsShortcut:Z

.field private mLogType:Ljava/lang/String;

.field private mShortcutId:Ljava/lang/String;

.field private final mSource:Lcom/android/quicksearchbox/Source;

.field private mSpinnerWhileRefreshing:Z

.field private mSuggestionQuery:Ljava/lang/String;

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mText2Url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Source;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    .line 51
    return-void
.end method

.method private appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 332
    if-eqz p3, :cond_0

    .line 333
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    if-ne p0, p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 245
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 247
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/android/quicksearchbox/SuggestionData;

    .line 249
    .local v0, other:Lcom/android/quicksearchbox/SuggestionData;
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 250
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 251
    goto :goto_0

    .line 252
    :cond_4
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 253
    goto :goto_0

    .line 254
    :cond_5
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 255
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 256
    goto :goto_0

    .line 257
    :cond_6
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 258
    goto :goto_0

    .line 259
    :cond_7
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 260
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 261
    goto :goto_0

    .line 262
    :cond_8
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 263
    goto :goto_0

    .line 264
    :cond_9
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 265
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 266
    goto :goto_0

    .line 267
    :cond_a
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 268
    goto :goto_0

    .line 269
    :cond_b
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 270
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 271
    goto :goto_0

    .line 272
    :cond_c
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 273
    goto/16 :goto_0

    .line 274
    :cond_d
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 275
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 276
    goto/16 :goto_0

    .line 277
    :cond_e
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 278
    goto/16 :goto_0

    .line 279
    :cond_f
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 280
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v1, v2

    .line 281
    goto/16 :goto_0

    .line 282
    :cond_10
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 283
    goto/16 :goto_0

    .line 284
    :cond_11
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 285
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    .line 286
    goto/16 :goto_0

    .line 287
    :cond_12
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 288
    goto/16 :goto_0

    .line 289
    :cond_13
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    if-nez v3, :cond_14

    .line 290
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    if-eqz v3, :cond_15

    move v1, v2

    .line 291
    goto/16 :goto_0

    .line 292
    :cond_14
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 293
    goto/16 :goto_0

    .line 294
    :cond_15
    iget-boolean v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mSpinnerWhileRefreshing:Z

    iget-boolean v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mSpinnerWhileRefreshing:Z

    if-eq v3, v4, :cond_16

    move v1, v2

    .line 295
    goto/16 :goto_0

    .line 296
    :cond_16
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 297
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    if-eqz v3, :cond_18

    move v1, v2

    .line 298
    goto/16 :goto_0

    .line 299
    :cond_17
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    move v1, v2

    .line 300
    goto/16 :goto_0

    .line 301
    :cond_18
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 302
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    if-eqz v3, :cond_1a

    move v1, v2

    .line 303
    goto/16 :goto_0

    .line 304
    :cond_19
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    move v1, v2

    .line 305
    goto/16 :goto_0

    .line 306
    :cond_1a
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 307
    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 308
    goto/16 :goto_0

    .line 309
    :cond_1b
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 310
    goto/16 :goto_0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getDefaultIntentAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2Url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 222
    const/16 v0, 0x1f

    .line 223
    .local v0, prime:I
    const/4 v1, 0x1

    .line 224
    .local v1, result:I
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 225
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 226
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 227
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 228
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 229
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 230
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 231
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 232
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 233
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSpinnerWhileRefreshing:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x4cf

    :goto_9
    add-int v1, v4, v2

    .line 234
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 235
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 236
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    if-nez v4, :cond_c

    :goto_c
    add-int v1, v2, v3

    .line 237
    return v1

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 227
    :cond_3
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 230
    :cond_6
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 231
    :cond_7
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 232
    :cond_8
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    .line 233
    :cond_9
    const/16 v2, 0x4d5

    goto :goto_9

    .line 234
    :cond_a
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    .line 235
    :cond_b
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    .line 236
    :cond_c
    iget-object v3, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_c
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIsHistory:Z

    return v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mSpinnerWhileRefreshing:Z

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SuggestionData;->mIsShortcut:Z

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 2

    .prologue
    .line 123
    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SuggestionData;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setExtras(Lcom/android/quicksearchbox/SuggestionExtras;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

    .line 340
    return-void
.end method

.method public setFormat(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "format"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mFormat:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setIcon1(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "icon1"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon1:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setIcon2(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "icon2"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIcon2:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "intentAction"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setIntentData(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "intentData"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setIntentExtraData(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "intentExtraData"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setIsHistory(Z)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "isHistory"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIsHistory:Z

    .line 217
    return-object p0
.end method

.method public setIsShortcut(Z)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "isShortcut"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mIsShortcut:Z

    .line 211
    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "shortcutId"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setSpinnerWhileRefreshing(Z)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "spinnerWhileRefreshing"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mSpinnerWhileRefreshing:Z

    .line 199
    return-object p0
.end method

.method public setSuggestionLogType(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "logType"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setSuggestionQuery(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "suggestionQuery"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setText1(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "text1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setText2(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "text2"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setText2Url(Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionData;
    .locals 0
    .parameter "text2Url"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionData;->mText2Url:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuggestionData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "source"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v2}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "text1"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mText1:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "intentAction"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "intentData"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mSuggestionQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "shortcutid"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "logtype"

    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionData;->mLogType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionData;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
