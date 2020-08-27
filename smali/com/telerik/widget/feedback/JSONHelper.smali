.class public Lcom/telerik/widget/feedback/JSONHelper;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 13
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 70
    .local v6, "thisMethods":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v9, v6

    if-ge v2, v9, :cond_2

    .line 71
    aget-object v5, v6, v2

    .line 72
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "set"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "set"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 75
    .local v4, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 76
    .local v8, "value":Ljava/lang/Object;
    instance-of v9, v8, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_1

    .line 78
    :try_start_2
    move-object v0, v8

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    .line 79
    .local v7, "typedObject":Lorg/json/JSONObject;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.telerik.widget.feedback."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 80
    .local v3, "imageClass":Ljava/lang/Class;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/json/JSONObject;

    aput-object v11, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 81
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "imageClass":Ljava/lang/Class;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "typedObject":Lorg/json/JSONObject;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x1

    :try_start_3
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 88
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 93
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v9

    .line 96
    :cond_2
    return-void

    .line 82
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    .restart local v8    # "value":Ljava/lang/Object;
    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method public static toJSONArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 20
    .local v2, "result":Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "item":Ljava/lang/Object;
    invoke-static {v1}, Lcom/telerik/widget/feedback/JSONHelper;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 24
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public static toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "source"    # Ljava/lang/Object;

    .prologue
    .line 28
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v4, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 32
    .local v3, "objectMethods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 33
    aget-object v2, v3, v0

    .line 34
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 35
    const/4 v6, 0x0

    .line 37
    .local v6, "value":Ljava/lang/Object;
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 41
    .end local v6    # "value":Ljava/lang/Object;
    :goto_1
    if-nez v6, :cond_1

    .line 32
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "get"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.telerik.widget.feedback"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    :try_start_2
    invoke-static {v6}, Lcom/telerik/widget/feedback/JSONHelper;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 51
    .local v5, "typedObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 52
    .end local v5    # "typedObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 56
    :cond_2
    :try_start_3
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 58
    :catch_1
    move-exception v7

    goto :goto_2

    .line 64
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_3
    return-object v4

    .line 38
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v6    # "value":Ljava/lang/Object;
    :catch_2
    move-exception v7

    goto :goto_1
.end method
