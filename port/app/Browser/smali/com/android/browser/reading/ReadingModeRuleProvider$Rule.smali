.class public Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
.super Ljava/lang/Object;
.source "ReadingModeRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModeRuleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rule"
.end annotation


# instance fields
.field public ads:Ljava/lang/String;

.field public comments:Ljava/lang/String;

.field public contentPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public firstPage:Ljava/lang/String;

.field public isCacheable:Z

.field public isWapLike:Z

.field public isWapSite:Z

.field public mcacheKeepAlive:I

.field public nextLinkUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preLinkUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/reading/ReadingModeRuleProvider;

.field public titlePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public urlPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/browser/reading/ReadingModeRuleProvider;Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;)V
    .locals 2
    .parameter
    .parameter "rule"

    .prologue
    const/4 v1, 0x0

    .line 198
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->this$0:Lcom/android/browser/reading/ReadingModeRuleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    .line 204
    iget-object v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    .line 205
    iget-boolean v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapSite:Z

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 206
    iget-boolean v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapLike:Z

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 207
    iget v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    iput v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    .line 208
    iget-boolean v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isCacheable:Z

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 209
    iget-object v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    .line 210
    iget-object v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 212
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/browser/reading/ReadingModeRuleProvider;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;ZZIZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter "urls"
    .parameter "titles"
    .parameter "contents"
    .parameter "plinks"
    .parameter "nlinks"
    .parameter "comms"
    .parameter "wapSite"
    .parameter "wapLike"
    .parameter "mcache_keep_alive"
    .parameter "cacheable"
    .parameter "advertise"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->this$0:Lcom/android/browser/reading/ReadingModeRuleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    .line 155
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 156
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 160
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    .line 170
    iput-object p7, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    .line 171
    iput-boolean p8, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapSite:Z

    .line 172
    iput-boolean p9, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapLike:Z

    .line 173
    iput p10, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    .line 174
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isCacheable:Z

    .line 175
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    .line 176
    const/4 v2, 0x0

    .line 178
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->urlPatterns:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 187
    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 188
    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->preLinkUrls:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 190
    :cond_3
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    invoke-virtual {p6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/android/browser/reading/ReadingModeRuleProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v1           #e:Lorg/json/JSONException;
    :cond_4
    return-void
.end method
