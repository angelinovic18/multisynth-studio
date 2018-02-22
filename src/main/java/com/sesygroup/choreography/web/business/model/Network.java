/*
 * Copyright 2017 Software Engineering and Synthesis Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.sesygroup.choreography.web.business.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

/**
 *
 * @author Alexander Perucci (http://www.alexanderperucci.com/)
 *
 */
@Entity
@Table(name = "network")
public class Network implements java.io.Serializable {
   private static final long serialVersionUID = 6712650419073279052L;
   
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name = "network_id")
   private Long id;
   
   @Column(name = "name" , nullable = false, length = 45)
   private String name;
   
   @Column(name = "type", nullable = false, length = 45)
   private String type;
   
   @OneToMany(mappedBy = "network")
   @JoinColumn(name = "network_id")
   private List<NetworkNode> nodes;
   
   @OneToMany(mappedBy = "network")
   @JoinColumn(name = "network_id")
   private List<NetworkEdge> edges;
   
   public Long getId() {
	   return id;
   }
   
   public void setId(Long id) {
	   this.id = id;
   }
   
   public String getName() {
	   return name;
   }

   public void setName(String name) {
	   this.name = name;
   }
   
   public String getType() {
	   return type;
   }
   
   public void setType(String type){
	   this.type = type;
   }
   
   public Network() {
      super();
      nodes = new ArrayList<NetworkNode>();
      edges = new ArrayList<NetworkEdge>();
   }

   public Network(List<NetworkNode> nodes, List<NetworkEdge> edges) {
      super();
      this.nodes = nodes;
      this.edges = edges;
   }

   public List<NetworkNode> getNodes() {
      return nodes;
   }

   public void setNodes(List<NetworkNode> nodes) {
      this.nodes = nodes;
   }

   public List<NetworkEdge> getEdges() {
      return edges;
   }

   public void setEdges(List<NetworkEdge> edges) {
      this.edges = edges;
   }

}
