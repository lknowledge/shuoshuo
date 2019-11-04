package com.community.bean;

import java.util.ArrayList;
import java.util.List;

public class RepairsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public RepairsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andRepairsIdIsNull() {
            addCriterion("repairs_id is null");
            return (Criteria) this;
        }

        public Criteria andRepairsIdIsNotNull() {
            addCriterion("repairs_id is not null");
            return (Criteria) this;
        }

        public Criteria andRepairsIdEqualTo(Integer value) {
            addCriterion("repairs_id =", value, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdNotEqualTo(Integer value) {
            addCriterion("repairs_id <>", value, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdGreaterThan(Integer value) {
            addCriterion("repairs_id >", value, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("repairs_id >=", value, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdLessThan(Integer value) {
            addCriterion("repairs_id <", value, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdLessThanOrEqualTo(Integer value) {
            addCriterion("repairs_id <=", value, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdIn(List<Integer> values) {
            addCriterion("repairs_id in", values, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdNotIn(List<Integer> values) {
            addCriterion("repairs_id not in", values, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdBetween(Integer value1, Integer value2) {
            addCriterion("repairs_id between", value1, value2, "repairsId");
            return (Criteria) this;
        }

        public Criteria andRepairsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("repairs_id not between", value1, value2, "repairsId");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andLinkmenIsNull() {
            addCriterion("linkmen is null");
            return (Criteria) this;
        }

        public Criteria andLinkmenIsNotNull() {
            addCriterion("linkmen is not null");
            return (Criteria) this;
        }

        public Criteria andLinkmenEqualTo(String value) {
            addCriterion("linkmen =", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenNotEqualTo(String value) {
            addCriterion("linkmen <>", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenGreaterThan(String value) {
            addCriterion("linkmen >", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenGreaterThanOrEqualTo(String value) {
            addCriterion("linkmen >=", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenLessThan(String value) {
            addCriterion("linkmen <", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenLessThanOrEqualTo(String value) {
            addCriterion("linkmen <=", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenLike(String value) {
            addCriterion("linkmen like", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenNotLike(String value) {
            addCriterion("linkmen not like", value, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenIn(List<String> values) {
            addCriterion("linkmen in", values, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenNotIn(List<String> values) {
            addCriterion("linkmen not in", values, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenBetween(String value1, String value2) {
            addCriterion("linkmen between", value1, value2, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinkmenNotBetween(String value1, String value2) {
            addCriterion("linkmen not between", value1, value2, "linkmen");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneIsNull() {
            addCriterion("linktelephone is null");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneIsNotNull() {
            addCriterion("linktelephone is not null");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneEqualTo(String value) {
            addCriterion("linktelephone =", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneNotEqualTo(String value) {
            addCriterion("linktelephone <>", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneGreaterThan(String value) {
            addCriterion("linktelephone >", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneGreaterThanOrEqualTo(String value) {
            addCriterion("linktelephone >=", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneLessThan(String value) {
            addCriterion("linktelephone <", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneLessThanOrEqualTo(String value) {
            addCriterion("linktelephone <=", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneLike(String value) {
            addCriterion("linktelephone like", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneNotLike(String value) {
            addCriterion("linktelephone not like", value, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneIn(List<String> values) {
            addCriterion("linktelephone in", values, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneNotIn(List<String> values) {
            addCriterion("linktelephone not in", values, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneBetween(String value1, String value2) {
            addCriterion("linktelephone between", value1, value2, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andLinktelephoneNotBetween(String value1, String value2) {
            addCriterion("linktelephone not between", value1, value2, "linktelephone");
            return (Criteria) this;
        }

        public Criteria andMalfunctionIsNull() {
            addCriterion("malfunction is null");
            return (Criteria) this;
        }

        public Criteria andMalfunctionIsNotNull() {
            addCriterion("malfunction is not null");
            return (Criteria) this;
        }

        public Criteria andMalfunctionEqualTo(String value) {
            addCriterion("malfunction =", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionNotEqualTo(String value) {
            addCriterion("malfunction <>", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionGreaterThan(String value) {
            addCriterion("malfunction >", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionGreaterThanOrEqualTo(String value) {
            addCriterion("malfunction >=", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionLessThan(String value) {
            addCriterion("malfunction <", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionLessThanOrEqualTo(String value) {
            addCriterion("malfunction <=", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionLike(String value) {
            addCriterion("malfunction like", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionNotLike(String value) {
            addCriterion("malfunction not like", value, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionIn(List<String> values) {
            addCriterion("malfunction in", values, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionNotIn(List<String> values) {
            addCriterion("malfunction not in", values, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionBetween(String value1, String value2) {
            addCriterion("malfunction between", value1, value2, "malfunction");
            return (Criteria) this;
        }

        public Criteria andMalfunctionNotBetween(String value1, String value2) {
            addCriterion("malfunction not between", value1, value2, "malfunction");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("state is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("state is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(String value) {
            addCriterion("state =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(String value) {
            addCriterion("state <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(String value) {
            addCriterion("state >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(String value) {
            addCriterion("state >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(String value) {
            addCriterion("state <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(String value) {
            addCriterion("state <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLike(String value) {
            addCriterion("state like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotLike(String value) {
            addCriterion("state not like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<String> values) {
            addCriterion("state in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<String> values) {
            addCriterion("state not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(String value1, String value2) {
            addCriterion("state between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(String value1, String value2) {
            addCriterion("state not between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andFeeIsNull() {
            addCriterion("fee is null");
            return (Criteria) this;
        }

        public Criteria andFeeIsNotNull() {
            addCriterion("fee is not null");
            return (Criteria) this;
        }

        public Criteria andFeeEqualTo(String value) {
            addCriterion("fee =", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeNotEqualTo(String value) {
            addCriterion("fee <>", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeGreaterThan(String value) {
            addCriterion("fee >", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeGreaterThanOrEqualTo(String value) {
            addCriterion("fee >=", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeLessThan(String value) {
            addCriterion("fee <", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeLessThanOrEqualTo(String value) {
            addCriterion("fee <=", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeLike(String value) {
            addCriterion("fee like", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeNotLike(String value) {
            addCriterion("fee not like", value, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeIn(List<String> values) {
            addCriterion("fee in", values, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeNotIn(List<String> values) {
            addCriterion("fee not in", values, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeBetween(String value1, String value2) {
            addCriterion("fee between", value1, value2, "fee");
            return (Criteria) this;
        }

        public Criteria andFeeNotBetween(String value1, String value2) {
            addCriterion("fee not between", value1, value2, "fee");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}