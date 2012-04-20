.class public Lcom/android/providers/contacts/ProfileAwareUriMatcher;
.super Landroid/content/UriMatcher;
.source "ProfileAwareUriMatcher.java"


# static fields
.field private static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final PROFILE_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_URI_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_URI_LOOKUP_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URIS:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_ID_MAP:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_LOOKUP_KEY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "authority"
    .parameter "path"
    .parameter "code"

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    sget-object v4, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, tokens:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, afterLookup:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 78
    aget-object v2, v3, v1

    .line 79
    .local v2, token:Ljava/lang/String;
    const-string v4, "profile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    sget-object v4, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URIS:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v0           #afterLookup:Z
    .end local v1           #i:I
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokens:[Ljava/lang/String;
    :cond_0
    return-void

    .line 82
    .restart local v0       #afterLookup:Z
    .restart local v1       #i:I
    .restart local v2       #token:Ljava/lang/String;
    .restart local v3       #tokens:[Ljava/lang/String;
    :cond_1
    const-string v4, "lookup"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "as_vcard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 77
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_3
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    sget-object v4, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_ID_MAP:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :cond_5
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    if-eqz v0, :cond_4

    .line 90
    sget-object v4, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_LOOKUP_KEY_MAP:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public mapsToProfile(Landroid/net/Uri;)Z
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 110
    .local v5, match:I
    sget-object v6, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URIS:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 125
    :goto_0
    return v6

    .line 112
    :cond_0
    sget-object v6, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_ID_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    sget-object v6, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_ID_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 114
    .local v2, idSegment:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 115
    .local v0, id:J
    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    .line 116
    goto :goto_0

    .line 118
    .end local v0           #id:J
    .end local v2           #idSegment:I
    :cond_1
    sget-object v6, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_LOOKUP_KEY_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    sget-object v6, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->PROFILE_URI_LOOKUP_KEY_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 120
    .local v4, lookupKeySegment:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, lookupKey:Ljava/lang/String;
    const-string v6, "profile"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    .line 122
    goto :goto_0

    .line 125
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #lookupKeySegment:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
